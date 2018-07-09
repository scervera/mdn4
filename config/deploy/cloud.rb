# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary server in each group
# is considered to be the first unless any hosts have the primary
# property set.  Don't declare `role :all`, it's a meta role.

#role :app, %w{deploy@cloud1.cerveraweb.com, deploy@railroad.cerveraweb.com}
#role :web, %w{deploy@cloud1.cerveraweb.com, deploy@railroad.cerveraweb.com}
#role :db,  %w{deploy@cloud1.cerveraweb.com, deploy@railroad.cerveraweb.com}

#role :app, %w{deploy@railroad.cerveraweb.com}
#role :web, %w{deploy@railroad.cerveraweb.com}
#role :db, %w{deploy@railroad.cerveraweb.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server definition into the
# server list. The second argument is a, or duck-types, Hash and is
# used to set extended properties on the server.

#server 'railroad.cerveraweb.com', user: 'deploy', roles: %w{web app db}, keys: ["#{ENV['HOME']}/.ssh/amazon_ec2_key.pem"]
#server 'cloud1.cerveraweb.com', user: 'deploy', roles: %w{web app db}, keys: ["#{ENV['HOME']}/.ssh/amazon_ec2_key.pem"]
#server 'ec2-18-217-78-255.us-east-2.compute.amazonaws.com', user: 'deploy', roles: %w{web app db}, keys: ["#{ENV['HOME']}/.ssh/mdn_key_pair.pem"]
server 'www.mensdiscipleshipnetwork.com', user: 'deploy', roles: %w{web app db}, keys: ["#{ENV['HOME']}/.ssh/mdn_key_pair.pem"]

#set :rvm_ruby_version, '2.1.1'      # Defaults to: 'default'



# Custom SSH Options
# ==================
# You may pass any option but keep in mind that net/ssh understands a
# limited set of options, consult[net/ssh documentation](http://net-ssh.github.io/net-ssh/classes/Net/SSH.html#method-c-start).
#
# Global options
# --------------
#set :ssh_options, {
#     keys: %w(~/.ssh/amazon_ec2_key.pem),
#     forward_agent: false,
 #    auth_methods: %w(password publickey)
#   }
#
# And/or per server (overrides global)
# ------------------------------------
# server 'example.com',
#   user: 'user_name',
#   roles: %w{web app},
#   ssh_options: {
#     user: 'user_name', # overrides user setting above
#     keys: %w(/home/user_name/.ssh/id_rsa),
#     forward_agent: false,
#     auth_methods: %w(publickey password)
#     # password: 'please use keys'
#   }
