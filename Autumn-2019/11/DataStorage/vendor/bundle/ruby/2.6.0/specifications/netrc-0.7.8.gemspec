# -*- encoding: utf-8 -*-
# stub: netrc 0.7.8 ruby lib

Gem::Specification.new do |s|
  s.name = "netrc".freeze
  s.version = "0.7.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Keith Rarick".freeze, "geemus (Wesley Beary)".freeze]
  s.date = "2014-10-15"
  s.description = "This library can read and update netrc files, preserving formatting including comments and whitespace.".freeze
  s.email = "geemus@gmail.com".freeze
  s.homepage = "https://github.com/geemus/netrc".freeze
  s.rubygems_version = "3.0.6".freeze
  s.summary = "Library to read and write netrc files.".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<turn>.freeze, [">= 0"])
    else
      s.add_dependency(%q<turn>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<turn>.freeze, [">= 0"])
  end
end
