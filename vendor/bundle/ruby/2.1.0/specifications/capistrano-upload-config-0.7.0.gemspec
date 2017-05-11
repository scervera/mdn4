# -*- encoding: utf-8 -*-
# stub: capistrano-upload-config 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-upload-config"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Robert Coleman"]
  s.date = "2015-12-17"
  s.description = "Capistrano 3.x tasks to upload shared config that is stored outside of SCM"
  s.email = "github@robert.net.nz"
  s.homepage = "https://github.com/rjocoleman/capistrano-upload-config"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Capistrano 3.x tasks to upload shared config that is stored outside of SCM"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 3.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.5"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, [">= 3.0"])
      s.add_dependency(%q<bundler>, ["~> 1.5"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 3.0"])
    s.add_dependency(%q<bundler>, ["~> 1.5"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
