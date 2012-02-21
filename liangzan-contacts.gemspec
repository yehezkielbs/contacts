Gem::Specification.new do |s|
  s.name = "liangzan-contacts"
  s.version = "1.2.7"
  s.platform = Gem::Platform::RUBY
  s.authors = ["Lucas Carlson","Brad Imbierowicz", "Wong Liang Zan"]
  s.email = "zan@liangzan.net"
  s.homepage = "http://github.com/liangzan/contacts"
  s.summary = "grab contacts from Yahoo, AOL, Gmail, Hotmail, and Plaxo"
  s.description = "A universal interface to grab contact list information from various providers including Yahoo, AOL, Gmail, Hotmail, and Plaxo. Now supporting Ruby 1.9."

  s.add_dependency "json", "~> 1.6.5"
  s.add_dependency 'gdata_19', '~> 1.1.3'

  s.files = Dir.glob("lib/**/*") + Dir.glob("examples/**/*") + %w(LICENSE README.rdoc Rakefile)
  s.require_path = "lib"
end
