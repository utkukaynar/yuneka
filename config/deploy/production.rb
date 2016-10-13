set :stage, :production
server '46.101.179.218', user: 'deploy', roles: %w{web app db}
set :nginx_server_name, 'yuneka.com.tr'
