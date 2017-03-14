Rails.application.routes.draw do


  root controller: :images, action: :index
  post '/add_to_cart', controller: :shopping_cart, action: :add_to_cart, as: :add_to_cart

end
