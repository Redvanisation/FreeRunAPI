require 'rails_helper'
include Authenticate

RSpec.describe "Orders", type: :request do
  describe "GET /orders" do
    let(:user_params) { { username: 'test', email: 'test@email.com', password: 'password', address: '12 bowery, NY'  } }
    let(:user) { { email: 'test@email.com', password: 'password' } }

    
    before do
      login_valid(user_params, user)
      @token = JSON.parse(response.body)['access_token']
    end
    
    # it 'returns https success status when the user is logged in' do
    #   # login_valid(user_params, user)
    #   get '/orders', params: { 'headers': {Authorization: response.body['access_token'] }}
      

    #   # get '/orders', {request.cookies['access_token'] = @token}
    
    #   expect(response).to have_http_status(200)
    # end

    it "returns http success status" do
      get orders_path
      expect(response).to have_http_status(401)
    end
  end
end
