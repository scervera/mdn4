# Load DSL and set up stages
require 'capistrano/setup'

# Include default deployment tasks
require 'capistrano/deploy'

#https://github.com/capistrano-plugins/capistrano-ssh-doctor 
require 'capistrano/ssh_doctor'

#https://github.com/chouandy/capistrano-figaro-yml  
# Copies over application.yml when you run cap setup command
require 'capistrano/figaro_yml'

# https://github.com/capistrano-plugins/capistrano-secrets-yml
# Include capistrano-secrets-yml gem
# Copies over secrets.yml when you run cap setup command
require 'capistrano/secrets_yml'

# Include https://github.com/potsbo/capistrano-database-yml gem
# create database.yml file on the remote server by executing this task: bundle exec cap production setup
require 'capistrano/database_yml'

# Include tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#   https://github.com/capistrano/passenger
#
# See https://github.com/capistrano/rvm for configuration options
require 'capistrano/rvm'
# require 'capistrano/rbenv'
# require 'capistrano/chruby'
require 'capistrano/bundler'
require 'capistrano/rails'
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
# require 'capistrano/passenger'

# Load custom tasks from `lib/capistrano/tasks' if you have any defined
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
