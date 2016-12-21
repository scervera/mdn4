# -*- encoding: utf-8 -*-
# stub: cells-rails 0.0.6 ruby lib

Gem::Specification.new do |s|
  s.name = "cells-rails"
  s.version = "0.0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Nick Sutterer"]
  s.bindir = "exe"
  s.date = "2016-07-03"
  s.email = ["apotonick@gmail.com"]
  s.homepage = "http://trailblazer.to"
  s.rubygems_version = "2.2.2"
  s.summary = "Convenient Rails support for Cells."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cells>, [">= 4.1"])
      s.add_runtime_dependency(%q<actionpack>, [">= 3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<rake>, ["~> 10.0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<cells-erb>, [">= 0"])
    else
      s.add_dependency(%q<cells>, [">= 4.1"])
      s.add_dependency(%q<actionpack>, [">= 3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<rake>, ["~> 10.0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<cells-erb>, [">= 0"])
    end
  else
    s.add_dependency(%q<cells>, [">= 4.1"])
    s.add_dependency(%q<actionpack>, [">= 3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<rake>, ["~> 10.0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<cells-erb>, [">= 0"])
  end
end
