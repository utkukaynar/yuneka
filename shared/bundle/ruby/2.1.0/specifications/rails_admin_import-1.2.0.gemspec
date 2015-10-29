# -*- encoding: utf-8 -*-
# stub: rails_admin_import 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_admin_import"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Steph Skardal", "Julien Vanier"]
  s.date = "2015-08-27"
  s.email = ["steph@endpoint.com", "jvanier@gmail.com"]
  s.homepage = "https://github.com/stephskardal/rails_admin_import"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Import functionality for Rails Admin"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.2"])
      s.add_runtime_dependency(%q<rails_admin>, [">= 0.6.6"])
      s.add_runtime_dependency(%q<haml>, ["~> 4.0"])
      s.add_runtime_dependency(%q<rchardet>, ["~> 1.6"])
      s.add_runtime_dependency(%q<simple_xlsx_reader>, ["~> 1.0"])
      s.add_development_dependency(%q<rubygems-tasks>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.2"])
      s.add_dependency(%q<rails_admin>, [">= 0.6.6"])
      s.add_dependency(%q<haml>, ["~> 4.0"])
      s.add_dependency(%q<rchardet>, ["~> 1.6"])
      s.add_dependency(%q<simple_xlsx_reader>, ["~> 1.0"])
      s.add_dependency(%q<rubygems-tasks>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.2"])
    s.add_dependency(%q<rails_admin>, [">= 0.6.6"])
    s.add_dependency(%q<haml>, ["~> 4.0"])
    s.add_dependency(%q<rchardet>, ["~> 1.6"])
    s.add_dependency(%q<simple_xlsx_reader>, ["~> 1.0"])
    s.add_dependency(%q<rubygems-tasks>, [">= 0"])
  end
end
