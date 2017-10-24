# frozen_string_literal: true

source 'https://rubygems.org'

# Core
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.10.0'
gem 'rack-cors', '~> 1.0.2'
gem 'rails', '~> 5.1.4'
gem 'redis', '~> 4.0.1'

# Misc
gem 'active_interaction', '~> 3.6.0'
gem 'active_model_serializers', '~> 0.10.6'
gem 'bcrypt', '~> 3.1.11'
gem 'knock', '~> 2.1.1'
gem 'pundit', '~> 1.1.0'

# Worker
gem 'sidekiq', '~> 5.0.5'

# Utility
gem 'tamplier', '0.3.4'

# Deploy Dependencies
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Debugging tools
  gem 'byebug', '~> 9.1.0', platform: :mri
  gem 'pry-rails', '~> 0.3.6'

  # Code Quality
  gem 'rubocop', '0.51.0', require: false

  # Testing
  gem 'factory_girl_rails', '~> 4.8.0'
  gem 'guard-rspec', '~> 4.7.3', require: false
  gem 'guard-rubocop', '~> 1.3.0'
  gem 'rspec-rails', '~> 3.7.1'
  gem 'terminal-notifier-guard', '~> 1.7.0'
end

group :development do
  gem 'listen', '~> 3.1.5'
  gem 'spring', '~> 2.0.2'
  gem 'spring-watcher-listen', '~> 2.0.1'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1.2'
  gem 'simplecov', '~> 0.15.1', require: false
end
