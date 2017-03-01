# frozen_string_literal: true

source 'https://rubygems.org'

# Core
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'redis', '~> 3.3.3'
gem 'puma', '~> 3.0'
gem 'rack-cors'

# Misc
gem 'active_model_serializers', '~> 0.10.0'
gem 'active_interaction', '~> 3.4.0'

# Worker
gem 'sidekiq', '~> 4.2.9'

# Utility
gem 'tamplier', '0.3.4'

# Deploy Dependencies
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Debugging tools
  gem 'byebug', platform: :mri
  gem 'pry-rails', '~> 0.3.5'

  # Code Quality
  gem 'rubocop', '0.47.0', require: false
  gem 'rubocop-checkstyle_formatter', '0.3.0', require: false

  # Testing
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
