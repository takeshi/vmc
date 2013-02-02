# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gem-release"
  s.version = "0.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sven Fuchs"]
  s.date = "2012-08-13"
  s.description = "Release your ruby gems with ease. (What a bold statement for such a tiny plugin ...)"
  s.email = "svenfuchs@artweb-design.de"
  s.homepage = "http://github.com/svenfuchs/gem-release"
  s.require_paths = ["lib"]
  s.rubyforge_project = "[none]"
  s.rubygems_version = "1.8.11"
  s.summary = "Release your ruby gems with ease"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<test_declarative>, [">= 0.0.2"])
      s.add_development_dependency(%q<mocha>, [">= 0.9.8"])
    else
      s.add_dependency(%q<test_declarative>, [">= 0.0.2"])
      s.add_dependency(%q<mocha>, [">= 0.9.8"])
    end
  else
    s.add_dependency(%q<test_declarative>, [">= 0.0.2"])
    s.add_dependency(%q<mocha>, [">= 0.9.8"])
  end
end
