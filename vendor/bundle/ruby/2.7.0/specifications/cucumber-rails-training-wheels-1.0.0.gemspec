# -*- encoding: utf-8 -*-
# stub: cucumber-rails-training-wheels 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber-rails-training-wheels".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aslak Helles\u00F8y".freeze]
  s.date = "2011-10-05"
  s.description = "Training Wheels for Cucumber-Rails".freeze
  s.email = "cukes@googlegroups.com".freeze
  s.homepage = "http://cukes.info".freeze
  s.rubygems_version = "3.1.2".freeze
  s.summary = "cucumber-rails-training-wheels-1.0.0".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<cucumber-rails>.freeze, [">= 1.1.1"])
    s.add_development_dependency(%q<rails>.freeze, [">= 3.1.0"])
    s.add_development_dependency(%q<aruba>.freeze, [">= 0.4.6"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 2.6.0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 2.6.1"])
    s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0.6.7"])
  else
    s.add_dependency(%q<cucumber-rails>.freeze, [">= 1.1.1"])
    s.add_dependency(%q<rails>.freeze, [">= 3.1.0"])
    s.add_dependency(%q<aruba>.freeze, [">= 0.4.6"])
    s.add_dependency(%q<rspec>.freeze, [">= 2.6.0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 2.6.1"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0.6.7"])
  end
end
