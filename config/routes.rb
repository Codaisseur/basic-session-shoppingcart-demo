Rails.application.routes.draw do
  get 'shopping_cart_items/create'

  get 'shopping_cart_items/update'

  get 'shopping_cart_items/destroy'

  resources :hour_glasses
  resources :shopping_cart_items
end
