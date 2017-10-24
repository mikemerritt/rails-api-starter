# frozen_string_literal: true

FactoryGirl.define do
  factory :user do
    first_name 'Test'
    last_name 'User'
    email 'testuser@test.com'
    password_digest 'test'
  end
end
