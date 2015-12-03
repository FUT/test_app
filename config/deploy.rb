# If the environment differs from the stage name

set :application, 'test-app'
set :repo_url, 'git@github.com:FUT/test_app.git'


set :rvm_type, :user                     # Defaults to: :auto
set :rvm_ruby_version, '2.2.1'      # Defaults to: 'default'

set :linked_files, %w(config/database.yml)

# Defaults to 'db'
# set :migration_role, 'migrator'

# Defaults to false
# Skip migration if files in db/migrate were not modified
# set :conditionally_migrate, true

# Defaults to [:web]
set :assets_roles, [:web, :app]

# Defaults to 'assets'
# This should match config.assets.prefix in your rails config/application.rb
# set :assets_prefix, 'prepackaged-assets'

# If you need to touch public/images, public/javascripts, and public/stylesheets on each deploy
# set :normalize_asset_timestamps, %{public/images public/javascripts public/stylesheets}

# Defaults to nil (no asset cleanup is performed)
# If you use Rails 4+ and you'd like to clean up old assets after each deploy,
# set this to the number of versions to keep
set :keep_assets, 2

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  task :restart do
    invoke 'unicorn:restart'
  end
end
