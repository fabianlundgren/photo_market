class ShoppingCartController < ApplicationController

  def add_to_cart
  end

    def create
    if cookies['cart_id']
    else
       @cart = ShoppingCart.find_or_create_by(id: session[:cart_id])
      # session[:cart_id] = @cart.id
    end

      @cart = Cart.create
      @image = Image.find(params[:id])
      @cart.add(@image, @image.price)
    end
  end
