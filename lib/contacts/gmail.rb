require 'gdata'

class Contacts
  class Gmail < Base
    
    CONTACTS_SCOPE = 'https://www.google.com/m8/feeds/'
    CONTACTS_FEED = CONTACTS_SCOPE + 'contacts/default/full/?max-results=1000'
    
    def contacts
      return @contacts if @contacts
    end
    
    def real_connect
      gclient = GData::Client::Contacts.new

      if (@oauth_info)
        gclient.oauth_info = @oauth_info
      else
        gclient.clientlogin(@login, @password, @captcha_token, @captcha_response)
      end

      begin
        response = gclient.get(CONTACTS_FEED)
      rescue GData::Client::AuthorizationError
        # if oauth fails, try username & password
        if @oauth_info && @login && @password
          gclient.clientlogin(@login, @password, @captcha_token, @captcha_response)
          response = gclient.get(CONTACTS_FEED)
        else
          raise
        end
      end

      feed = response.to_xml

      @contacts = feed.elements.to_a('entry').collect do |entry|
        title, email = entry.elements['title'].text, nil
        entry.elements.each('gd:email') do |e|
          email = e.attribute('address').value if e.attribute('primary')
        end

        avatar_el = entry.elements['link[@type="image/*"]']
        avatar_url = avatar_el ? avatar_el.attribute('href').to_s : nil

        [title, email, avatar_url] unless email.nil?
      end
      @contacts.compact!
    rescue GData::Client::AuthorizationError => e
      raise AuthenticationError, "Username or password are incorrect"
    end
    
    private
    
    TYPES[:gmail] = Gmail
  end
end
