include Authenticate
require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "POST /auth/register" do
    let(:user_params) { { username: 'test', email: 'test@email.com', password: 'password', address: '12 bowery, NY'  } }

    it "returns http success" do
      post '/auth/register', params: user_params
      expect(response).to be_successful
      expect(response.body).to match(/User created successfully/)
      expect(response).to have_http_status(:success)
    end

    it 'Creates a new use' do
      expect do
        post '/auth/register', params: user_params
      end.to change(User, :count).by(1)
    end
  end

  describe 'POST /auth/login' do
    let(:user_params) { { username: 'test', email: 'test@email.com', password: 'password', address: '12 bowery, NY'  } }
    let(:user) { { email: 'test@email.com', password: 'password' } }
    let(:invalid_user) { { email: 'invalid@email.com', password: 'pasword' } }

    it 'returns http success' do
      login_valid(user_params, user)
      
      expect(response).to be_successful
      expect(response).to have_http_status(:success)
      expect(response.body['access_token']).to be_present
    end

    it 'returns unauthorized status for invalid params' do
      post '/auth/login', params: invalid_user

      expect(response).to have_http_status(401)
      expect(response.body).to match(/Invalid credentials/)
    end
  end
end
