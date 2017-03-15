class ShoppingCartController < ApplicationController

  def add_to_cart
    # If there is a cart stored in cookies, use that cart
    # Otherwise, create a new one.
    if cookies['cart_id']
      #add to that cart
    else
      # create new cart
      # store cart in cookies
      # https://github.com/AmberWilkie/sf-online-august/blob/master/app/controllers/carts_controller.rb
      # session[:cart_id] = @cart.id
      # https://github.com/AmberWilkie/sf-online-august/blob/master/features/support/hooks.rb
    end
    @cart = Cart.create

    # create a shopping cart or check for one that already exists (cookies)
    @image = Image.find(params[:id])
    # find the image based on its id (from params)
    @cart.add(@image, @image.price)
    # add that image to the shopping cart
  end
end
