
set :rails_env, 'production'

server '188.166.91.62', user: 'deployer', roles: %w{app db web}

set :ssh_options, {
  keys: %w(~/.ssh/id_rsa),
  forward_agent: true
}
