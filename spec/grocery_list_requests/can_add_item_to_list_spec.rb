RSpec.describe 'POST /api/groceries', type: :request do
  describe 'successfully' do
    before do
      post '/api/groceries',
           params: {
             name: 'Kylling'
           }
    end

    it 'responds with a 201' do
      expect(response).to have_http_status 201
    end

    it 'is expected to delete the item from database' do
      expect(Grocery.all.first['name']).to eq 'Kylling'
    end
  end
end
