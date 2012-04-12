Gem::Specification.new do |s|
  s.name = "yehezkielbs-contacts"
  s.version = "1.2.12"
  s.platform = Gem::Platform::RUBY
  s.authors = ["Lucas Carlson","Brad Imbierowicz", "Wong Liang Zan", "Mateusz Konikowski", "Laurynas Butkus"]
  s.email = "yehezkielbs@gmail.com"
  s.homepage = "https://github.com/yehezkielbs/contacts"
  s.summary = "grab contacts from Yahoo, AOL, Gmail, Hotmail, Plaxo, GMX.net, Web.de, inbox.lt, seznam.cz, t-online.de"
  s.description = "A universal interface to grab contact list information from Yahoo, AOL, Gmail, Hotmail, Plaxo, GMX.net, Web.de, inbox.lt, seznam.cz, t-online.de."

  s.add_dependency "json", "~> 1.6.5"
  s.add_dependency "gdata", "~> 1.1.1"
  s.add_dependency "nokogiri", "~> 1.5.0"
  s.add_dependency "nokogiri", "~> 1.5.0"
  s.add_dependency "fastercsv", "~> 1.5.4"

  s.files = Dir.glob("lib/**/*") + Dir.glob("examples/**/*") + %w(LICENSE README.rdoc Rakefile)
  s.require_path = "lib"
end
