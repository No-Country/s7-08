#FIXME replace 1.2.3.4 with your IP address
server "34.74.30.38", user: "deploy", roles: %w[app db web]
set :rails_env, "production"
