# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  # Factory
  it 'should have a valid factory' do
    expect(build(:user)).to be_valid
  end

  # Validations
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :email }
  it { should allow_value('test@test.com').for(:email) }
  it { should_not allow_value('test').for(:email) }

  # Associations
end
