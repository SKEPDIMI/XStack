require 'rails_helper'

RSpec.describe V1::SessionsController, type: :request do
  let!(:user) { create(:user) }
  let(:valid_credentials) do
    {
      email: user.email,
      password: user.password
    }.to_json
  end
  let(:invalid_credentials) do
    {
      email: Faker::Internet.email,
      password: Faker::Internet.password
    }.to_json
  end
  
  describe 'POST /v1/sessions' do
    context 'when valid credentials' do
      before { post '/v1/sessions', params: valid_credentials }
      it 'should have :created status code' do
        puts "VALID_CREDENTIALS: #{valid_credentials}"
        puts "OUR_USER: #{user.id}"

        expect(response).to have_http_status 201
      end
      it 'should return auth token' do
        expect(json['authentication_token']).not_to be_nil
      end
    end
  end
end
