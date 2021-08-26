require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'Associations' do
    it 'belongs_to user' do
      association = described_class.reflect_on_association(:user).macro
      expect(association).to eq :belongs_to
    end
    it 'has_many comments' do
      association = described_class.reflect_on_association(:comments)
      expect(association.macro).to eq :has_many
    end
    it 'has_many likes' do
      association = described_class.reflect_on_association(:likes)
      expect(association.macro).to eq :has_many
    end
  end
end
