Rails.application.routes.draw do
  devise_for :customers
  root to: 'homes#top'
  get 'homes/about' => 'homes#about'
  resources :items, only: [:index, :show]
end
