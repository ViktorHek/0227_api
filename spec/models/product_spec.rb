RSpec.describe Product, type: :model do
  describe 'is expected to have db colums' do
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :description }
  end
  
  describe 'is expected to have validation' do
    it { is_expected.to validate_presence_of :title }
  end

  describe 'Factory' do
    it 'is expected to be valid' do
      expect(create(:product)).to be_valid
    end
  end
end