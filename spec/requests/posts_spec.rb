require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /home' do
    it 'returns http success' do
      get root_path
      # p response
      expect(response).to have_http_status(:success)
    end
  end
end
