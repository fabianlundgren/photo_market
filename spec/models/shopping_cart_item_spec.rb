require 'rails_helper'

RSpec.describe ShoppingCartItem, type: :model do
  describe 'validations' do

  end

  describe 'associations' do
    it { is_expected.to belong_to :shopping_cart }
  end
end
