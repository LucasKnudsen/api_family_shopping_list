RSpec.describe 'GET /api/groceries', type: :request do
  let!(:grocery) { 3.times {create(:grocery)}}
  describe 'successfully' do
    before do
      get '/api/groceries'
    end

    it 'responds with a 200' do
      expect(response).to have_http_status 200
    end

    it 'responds with an array with 3 items' do
      expect(response_json['groceries'].count).to eq 3
    end

    it 'An item contains the expected name' do
      expect(response_json['groceries'].first['name']).to eq 'Tandpasta'
    end
  end
end
