# frozen_string_literal: true

source 'https://rubygems.org'

# Core
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.8.2'
gem 'rack-cors', '~> 0.4.1'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'redis', '~> 3.3.3'

# Misc
gem 'active_interaction', '~> 3.4.0'
gem 'active_model_serializers', '~> 0.10.0'
gem 'bcrypt', '~> 3.1.11'
gem 'knock', '~> 2.1.1'
gem 'pundit', '~> 1.1.0'

# Worker
gem 'sidekiq', '~> 4.2.9'

# Utility
gem 'tamplier', '0.3.4'

# Deploy Dependencies
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Debugging tools
  gem 'byebug', '~> 9.0.6', platform: :mri
  gem 'pry-rails', '~> 0.3.5'

  # Code Quality
  gem 'rubocop', '0.47.0', require: false
  gem 'rubocop-checkstyle_formatter', '0.3.0', require: false

  # Testing
  gem 'factory_girl_rails', '~> 4.8'
  gem 'guard-rspec', '~> 4.7.3', require: false
  gem 'guard-rubocop', '~> 1.2'
  gem 'rspec-rails', '~> 3.5'
  gem 'terminal-notifier-guard', '~> 1.7.0'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring', '~> 2.0.1'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'shoulda-matchers', '~> 3.1'
  gem 'simplecov', '~> 0.13.0', require: false
end
