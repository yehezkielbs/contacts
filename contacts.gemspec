Gem::Specification.new do |s|
  s.name = "contacts_19"
  s.version = "1.2.5"
  s.date = "2011-11-10"
  s.summary = "A universal interface to grab contact list information from various providers including Yahoo, AOL, Gmail, Hotmail, and Plaxo. Now supporting Ruby 1.9."
  s.email = "biff@sticksnleaves.com"
  s.homepage = "http://github.com/bimbiero/contacts"
  s.description = "A universal interface to grab contact list information from various providers including Yahoo, AOL, Gmail, Hotmail, and Plaxo. Now supporting Ruby 1.9."
  s.has_rdoc = false
  s.authors = ["Lucas Carlson","Brad Imbierowicz"]
  s.files = ["LICENSE", "Rakefile", "README", "examples/grab_contacts.rb", "lib/contacts.rb", "lib/contacts/base.rb", "lib/contacts/json_picker.rb", "lib/contacts/gmail.rb", "lib/contacts/aol.rb", "lib/contacts/hotmail.rb", "lib/contacts/plaxo.rb", "lib/contacts/yahoo.rb"]
  s.add_dependency("json", ">= 1.1.1")
  s.add_dependency('gdata_19', '>= 1.1.3')
end
