# require 'rails_helper'

# RSpec.describe 'posts API', type: :request do
#   # let!(:posts) { create_list(:post, 96) }
#   let(:post_id) { posts.first.id }

#   describe 'GET /api/posts' do
#     context 'When url is valid' do
#       before { get '/api/posts' }

#       it 'returns posts' do
#         expect(json).not_to be_empty
#         expect(json.size).to eq(96)
#       end
  
#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end

#     context 'When url is not valid' do
#       it 'returns Argument error' do
#         expect { get { '/api/posts?tag=' } }.to raise_error(ArgumentError)
#       end
#     end

#   end

# end
