RSpec.describe 'POST/api/products' do
  let(:user) { create(:user) }
  let(:user_headers) { user.create_new_auth_token }

  describe 'successfully create a products' do
    before do
      post '/api/products',
        params: {
          product: {
            title: 'MyTitle',
            description: 'SomeText',
            user_id: user.id,
          }
        },
        headers: user_headers
    end

    it 'is expected to return a 201 response' do
      expect(response).to have_http_status 201
    end

    it 'is expected to return a success message' do
      expect(response_json['message']).to eq 'Your product was successfully created!'
    end
  end

  describe 'unsuccessfully create a products without title' do
    before do
      post '/api/products',
        params: {
          product: {
            title: '',
            description: 'SomeText',
            user_id: user.id
          }
        },
        headers: user_headers
    end

    it 'is expected to return a 422 response' do
      expect(response).to have_http_status 422
    end

    it 'is expected to return a success message' do
      expect(response_json['message']).to eq "Title can't be blank"
    end
  end

  describe 'unsuccessfully create a products without authentication' do
    before do
      post '/api/products',
        params: {
          product: {
            title: 'MyTitle',
            description: 'SomeText',
            user_id: 'fel',
          }
        }
    end

    it 'is expected to return a 401 response' do
      expect(response).to have_http_status 401
    end

    it 'is expected to return a success message' do
      expect(response_json).to have_key('errors').and have_value(['You need to sign in or sign up before continuing.'])
    end
  end
end