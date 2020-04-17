require 'rails_helper'

RSpec.describe "Products", type: :request do
  describe "GET /products" do
    let(:product) { create(:product) }
    
    it "returns http success without login" do
      get '/products'
      expect(response).to have_http_status(200)
    end
  end
  
  describe "GET /products/1" do
    let(:product) { create(:product) }

    it 'returns a successful response without login' do
      get "/products/#{product.id}"

      expect(response).to have_http_status(200)
      expect(response.body['access_token']).not_to be_present
    end
  end
end
