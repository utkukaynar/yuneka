# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'yuneka'
set :repo_url, 'git@github.com:utkukaynar/yuneka.git'
set :deploy_to, '/home/rails/yuneka'
append :linked_files, 'config/database.yml', 'config/secrets.yml'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'
set :rails_env, 'production'
set :migration_role, :app

