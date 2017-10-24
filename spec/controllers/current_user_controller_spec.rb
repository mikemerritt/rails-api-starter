# frozen_string_literal: true

require 'rails_helper'

RSpec.describe V1::CurrentUserController, type: :controller do
  describe 'GET show' do
    let(:user) { create(:user) }
    let(:token) { Knock::AuthToken.new(payload: { sub: user.id }).token }

    context 'with valid token' do
      before do
        @request.headers['Authorization'] = "Bearer #{token}"
        get :show
      end

      it 'should return http success' do
        expect(response).to have_http_status(:success)
      end

      it 'should have the proper content type' do
        expect(response.content_type).to eq('application/vnd.api+json')
      end

      it 'should return data of the current user' do
        parsed_response = JSON.parse(response.body)
        expect(parsed_response['data']['id']).to eq(user.id.to_s)
        expect(parsed_response['data']['attributes']['email']).to eq(user.email)
      end
    end

    context 'with invalid token' do
      before { get :show }

      it 'should return http unauthorized' do
        expect(response).to have_http_status(:unauthorized)
      end
    end
  end
end
