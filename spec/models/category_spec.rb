require 'rails_helper'

RSpec.describe Category, type: :model do
  context 'when testing validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
