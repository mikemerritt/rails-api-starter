# frozen_string_literal: true

require 'rails_helper'

RSpec.describe V1::UsersController, type: :controller do
  describe 'POST create' do
    let(:invalid_params) { { first_name: '', last_name: '', email: '', password: '', password_confirmation: '' } }
    let(:valid_params) do
      { first_name: 'Test', last_name: 'Name', email: 'test@test.com',
        password: 'p@ssword', password_confirmation: 'p@ssword' }
    end

    context 'with valid params' do
      it 'should return http created' do
        post :create, params: { user: valid_params }
        expect(response).to have_http_status(:created)
      end
    end

    context 'with invalid params' do
      it 'should return http unprocessable_entity' do
        post :create, params: { user: invalid_params }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
end
