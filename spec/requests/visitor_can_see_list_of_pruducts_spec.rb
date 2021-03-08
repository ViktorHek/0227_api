RSpec.describe 'GET/api/products' do
  describe 'successfully get list of products' do
    let!(:products) { create(:product) }
    before do
      get '/api/products'
    end

    it 'is expected to return a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'is expected to have a title' do
      expect(response_json['products'][0]['title']).to eq 'MyString'
    end

    it 'is expected to have a description' do
      expect(response_json['products'][0]['description']).to eq 'MyText'
    end
  end
end