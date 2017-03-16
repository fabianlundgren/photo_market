class ShoppingCartItemsController < ApplicationController
  before_action :get_shopping_cart

  def create
    image = Image.find(params[:image_id])
    @cart.add(image, image.price)
    flash[:notice] = "#{image.name} has been added to your order"
    redirect_back(fallback_location: root_path)
  end

  private

  def get_shopping_cart
    @cart = ShoppingCart.find(params[:cart_id])
  end
end
