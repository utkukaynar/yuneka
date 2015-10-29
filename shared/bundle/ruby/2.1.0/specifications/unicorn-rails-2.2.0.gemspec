# -*- encoding: utf-8 -*-
# stub: unicorn-rails 2.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "unicorn-rails"
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Samuel Kadolph"]
  s.date = "2014-09-04"
  s.description = "unicorn-rails overrides the Rack::Handler.default method to return Rack::Handler::Unicorn which will cause rack (and rails) to use unicorn by default."
  s.email = ["samuel@kadolph.com"]
  s.homepage = "https://github.com/samuelkadolph/unicorn-rails"
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "2.2.2"
  s.summary = "unicorn-rails is a simple gem that sets the default server for rack (and rails) to unicorn."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, [">= 0"])
      s.add_runtime_dependency(%q<unicorn>, [">= 0"])
    else
      s.add_dependency(%q<rack>, [">= 0"])
      s.add_dependency(%q<unicorn>, [">= 0"])
    end
  else
    s.add_dependency(%q<rack>, [">= 0"])
    s.add_dependency(%q<unicorn>, [">= 0"])
  end
end
