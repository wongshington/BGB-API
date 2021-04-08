# -*- encoding: utf-8 -*-
# stub: cucumber 5.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cucumber".freeze
  s.version = "5.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/cucumber/cucumber-ruby/issues", "changelog_uri" => "https://github.com/cucumber/cucumber-ruby/blob/master/CHANGELOG.md", "documentation_uri" => "https://www.rubydoc.info/github/cucumber/cucumber-ruby/", "mailing_list_uri" => "https://groups.google.com/forum/#!forum/cukes", "source_code_uri" => "https://github.com/cucumber/cucumber-ruby" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Aslak Helles\u00F8y".freeze, "Matt Wynne".freeze, "Steve Tooke".freeze]
  s.date = "2021-01-28"
  s.description = "Behaviour Driven Development with elegance and joy".freeze
  s.email = "cukes@googlegroups.com".freeze
  s.executables = ["cucumber".freeze]
  s.files = ["bin/cucumber".freeze]
  s.homepage = "https://cucumber.io/".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "cucumber-5.3.0".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<builder>.freeze, ["~> 3.2", ">= 3.2.4"])
    s.add_runtime_dependency(%q<cucumber-core>.freeze, ["~> 8.0", ">= 8.0.1"])
    s.add_runtime_dependency(%q<cucumber-create-meta>.freeze, ["~> 2.0", ">= 2.0.2"])
    s.add_runtime_dependency(%q<cucumber-cucumber-expressions>.freeze, ["~> 10.3", ">= 10.3.0"])
    s.add_runtime_dependency(%q<cucumber-gherkin>.freeze, ["~> 15.0", ">= 15.0.2"])
    s.add_runtime_dependency(%q<cucumber-html-formatter>.freeze, ["~> 9.0", ">= 9.0.0"])
    s.add_runtime_dependency(%q<cucumber-messages>.freeze, ["~> 13.1", ">= 13.1.0"])
    s.add_runtime_dependency(%q<cucumber-wire>.freeze, ["~> 4.0", ">= 4.0.1"])
    s.add_runtime_dependency(%q<diff-lcs>.freeze, ["~> 1.4", ">= 1.4.4"])
    s.add_runtime_dependency(%q<multi_test>.freeze, ["~> 0.1", ">= 0.1.2"])
    s.add_runtime_dependency(%q<sys-uname>.freeze, ["~> 1.2", ">= 1.2.1"])
    s.add_development_dependency(%q<nokogiri>.freeze, ["~> 1.10", ">= 1.10.10"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.13", ">= 0.13.1"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0", ">= 13.0.1"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9", ">= 3.9.0"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.19", ">= 0.19.0"])
    s.add_development_dependency(%q<syntax>.freeze, ["~> 1.2", ">= 1.2.2"])
    s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.3", ">= 3.3.6"])
    s.add_development_dependency(%q<webrick>.freeze, ["~> 1.6", ">= 1.6.1"])
    s.add_development_dependency(%q<octokit>.freeze, ["~> 4.19", ">= 4.19.0"])
    s.add_development_dependency(%q<rack-test>.freeze, ["~> 1.1", ">= 1.1.0"])
    s.add_development_dependency(%q<sinatra>.freeze, ["~> 2.1", ">= 2.1.0"])
    s.add_development_dependency(%q<capybara>.freeze, ["~> 3.33", ">= 3.33.0"])
  else
    s.add_dependency(%q<builder>.freeze, ["~> 3.2", ">= 3.2.4"])
    s.add_dependency(%q<cucumber-core>.freeze, ["~> 8.0", ">= 8.0.1"])
    s.add_dependency(%q<cucumber-create-meta>.freeze, ["~> 2.0", ">= 2.0.2"])
    s.add_dependency(%q<cucumber-cucumber-expressions>.freeze, ["~> 10.3", ">= 10.3.0"])
    s.add_dependency(%q<cucumber-gherkin>.freeze, ["~> 15.0", ">= 15.0.2"])
    s.add_dependency(%q<cucumber-html-formatter>.freeze, ["~> 9.0", ">= 9.0.0"])
    s.add_dependency(%q<cucumber-messages>.freeze, ["~> 13.1", ">= 13.1.0"])
    s.add_dependency(%q<cucumber-wire>.freeze, ["~> 4.0", ">= 4.0.1"])
    s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.4", ">= 1.4.4"])
    s.add_dependency(%q<multi_test>.freeze, ["~> 0.1", ">= 0.1.2"])
    s.add_dependency(%q<sys-uname>.freeze, ["~> 1.2", ">= 1.2.1"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.10", ">= 1.10.10"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.13", ">= 0.13.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0", ">= 13.0.1"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9", ">= 3.9.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.19", ">= 0.19.0"])
    s.add_dependency(%q<syntax>.freeze, ["~> 1.2", ">= 1.2.2"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3.3", ">= 3.3.6"])
    s.add_dependency(%q<webrick>.freeze, ["~> 1.6", ">= 1.6.1"])
    s.add_dependency(%q<octokit>.freeze, ["~> 4.19", ">= 4.19.0"])
    s.add_dependency(%q<rack-test>.freeze, ["~> 1.1", ">= 1.1.0"])
    s.add_dependency(%q<sinatra>.freeze, ["~> 2.1", ">= 2.1.0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 3.33", ">= 3.33.0"])
  end
end
