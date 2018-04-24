# -*- encoding: utf-8 -*-
# stub: capistrano-figaro-yml 1.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-figaro-yml"
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chia-Hui Chou"]
  s.date = "2016-09-27"
  s.description = "Capistrano tasks for automating figaro `application.yml` file handling for Rails 4+ apps.\nThis plugins syncs contents of your local figaro file and copies that to\nthe remote server.\n"
  s.email = ["chouandy625@gmail.com"]
  s.homepage = "https://github.com/ChouAndy/capistrano-figaro-yml"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Capistrano tasks for automating figaro `application.yml` file handling for Rails 4+ apps."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, ["~> 3.1"])
      s.add_runtime_dependency(%q<sshkit>, [">= 1.2.0", "~> 1.2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<capistrano>, ["~> 3.1"])
      s.add_dependency(%q<sshkit>, [">= 1.2.0", "~> 1.2"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<capistrano>, ["~> 3.1"])
    s.add_dependency(%q<sshkit>, [">= 1.2.0", "~> 1.2"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end