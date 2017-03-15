Rails.application.routes.draw do
  devise_for :users
  root controller: :images, action: :index
end
