# frozen_string_literal: true

module V1
  class UsersController < ApplicationController
    skip_before_action :authenticate_user

    def create
      user = User.new(user_params)
      if user.save
        render json: Knock::AuthToken.new(payload: { sub: user.id }), status: :created
      else
        render json: user.errors, status: :unprocessable_entity
      end
    end

    private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
  end
end
