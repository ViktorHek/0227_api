RSpec.describe 'GET/api/products' do
  describe 'successfully get list of products' do
    let(:products) { create(:product) }
    before do
      get '/api/products'
    end

    it 'is expected to return a 200 response' do
      expect(response).to have_http_status 200
    end
  end
end