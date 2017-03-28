# Rails API Starter
[![Build Status](https://travis-ci.org/mikemerritt/rails-api-starter.svg?branch=master)](https://travis-ci.org/mikemerritt/rails-api-starter)

Getting projects up and running can be time consuming. This is a simple starter rails 5 app for quickly creating JSON APIs. Preconfigured with JWT authentication.

## Usage
To get the app set up git clone and run `bundle install` to install all required dependencies. This app is configured to be paired with it's sister front-end react app https://github.com/mikemerritt/react-redux-starter but can be used with any front end.

### Server
This app is configured to use Puma as a dev server. If you use foreman there is an included Profile. Simply run `foreman start` to start the dev server and sidekiq. If you do not use/want to use foreman you can start the server with a standard `rails s -p 3000`

### Testing
This app uses rspec for testing and guard to monitor changes and auto-run any changed specs. `bundle exec guard` will start guard and monitor files for changes. `bundle exec rspec` will run the entire test suite. Simplecov is also included for code coverage metrics and will automatically be run with the test suite.
