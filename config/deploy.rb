# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'yuneka'
set :repo_url, 'git@github.com:utkukaynar/yuneka.git'

set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.3.1p112'

set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}
set :rbenv_roles, :all # default value

set :deploy_to, '/home/rails/yuneka'

set :linked_files, %w{config/database.yml}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
