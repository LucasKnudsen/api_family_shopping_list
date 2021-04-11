RSpec.describe 'DELETE /api/groceries', type: :request do
  let!(:grocery) {create(:grocery)}
  describe 'successfully' do
    before do
      delete "/api/groceries/#{grocery.id}"
    end

    it 'responds with a 204' do
      expect(response).to have_http_status 204
    end

    it 'is expected to delete the item from database' do
      groceries = Grocery.all
      expect(groceries).to eq []
    end
  end
end
