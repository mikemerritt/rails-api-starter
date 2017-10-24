# frozen_string_literal: true

module V1
  class ApplicationController < ActionController::API
    include Knock::Authenticable
    before_action :authenticate_user
  end
end
