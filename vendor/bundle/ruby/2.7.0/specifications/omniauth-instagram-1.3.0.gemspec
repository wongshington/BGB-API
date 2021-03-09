# -*- encoding: utf-8 -*-
# stub: omniauth-instagram 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-instagram".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mihai Anca".freeze]
  s.date = "2018-01-15"
  s.description = "OmniAuth strategy for Instagram.".freeze
  s.email = ["mihai@mihaia.com".freeze]
  s.homepage = "https://github.com/ropiku/omniauth-instagram".freeze
  s.rubygems_version = "3.1.2".freeze
  s.summary = "OmniAuth strategy for Instagram.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<omniauth>.freeze, ["~> 1"])
    s.add_runtime_dependency(%q<omniauth-oauth2>.freeze, ["~> 1"])
  else
    s.add_dependency(%q<omniauth>.freeze, ["~> 1"])
    s.add_dependency(%q<omniauth-oauth2>.freeze, ["~> 1"])
  end
end
