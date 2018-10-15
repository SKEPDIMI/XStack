require 'rails_helper'
include ActionController::RespondWith

describe 'POST /auth', type: :request do
  context 'Valid credentials are provided' do
    before do
      sign_up
    end
    it 'should return status code 200' do
      expect(response).to have_http_status(:success)
    end
    it 'should have returned user' do
      body = JSON.parse(response.body)

      expect(body['data']).to be_present
    end
    it 'should have created user' do
      expect{ sign_up }.to change { User.count }.by 1
    end
    it 'should provide authentication token' do
      expect(response.headers['access-token']).to be_present
      expect(response.headers['token-type']).to be_present
      expect(response.headers['client']).to be_present
      expect(response.headers['uid']).to be_present
      expect(response.headers['expiry']).to be_present
    end
  end
  context 'when invalid credentials' do
    context 'when email' do
      before do
        sign_up email: 'fakeemail'
      end
      it 'should return  status code 422' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
    context 'when password' do
      before do
        sign_up password: ''
      end
      it 'should return  status code 422' do
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end
  context 'when user already exists' do
    let (:user) { create(:user) }
    before do
      sign_up email: user.email, password: user.password
    end

    it 'should return status code 4xx' do
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
  # context 'when unsanitized fields are provided' do
  #   
  # end
  def sign_up(args = {})
    email = args[:email] || Faker::Internet.email
    password = args[:password] || Faker::Internet.password

    post '/auth',
      params: { email: email, password: password, password_confirmation: password }.to_json,
      headers: { 'Content-Type' => 'application/json', 'ACCEPT' => 'application/json' }
  end
end