RSpec.describe ApplicationHelper, type: :helper do
  describe '#shopping_cart_message' do
    let!(:cart) { create(:shopping_cart) }
    let!(:image_1) { create(:image) }
    let!(:image_2) { create(:image) }

    before { session[:cart_id] = cart.id }
    after { Capybara.reset_sessions! }

    it 'generates message' do
      cart.add(image_1, image_1.price)
      expect(helper.shopping_cart_message).to eq 'You have 1 item in your order.'
    end

    it 'pluralizes "item"' do
      cart.add(image_1, image_1.price)
      cart.add(image_2, image_2.price)
      expect(helper.shopping_cart_message).to eq 'You have 2 items in your order.'
    end
  end
end