# frozen_string_literal: true
class User < ApplicationRecord
  # Assocaitions

  # Validations
  validates :first_name, :last_name, :email, presence: true

  # Misc
  has_secure_password
end
