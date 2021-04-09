require 'rails_helper'

RSpec.describe Grocery, type: :model do
  describe 'validates existence of expected columns' do
    it {is_expected.to have_db_column :name}
  end

  describe 'validates attributes' do
    it {should validate_presence_of(:name)}
  end

  describe 'factory' do
    it 'should have a valid factory' do
      expect(create(:grocery)).to be_valid
    end
  end
end
