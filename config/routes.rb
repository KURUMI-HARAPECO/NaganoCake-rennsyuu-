Rails.application.routes.draw do
  devise_for :customers
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :items, only: [:index, :show]
  resources :cart_items, only: [:index, :destroy, :create]
  delete 'cart_items' => 'cart_items#all_destroy', as: 'cart_item_all'
end
