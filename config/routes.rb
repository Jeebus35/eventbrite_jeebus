Rails.application.routes.draw do
  get 'user/show'
  get 'events/index'
  get 'static_pages/index'
  get 'static_pages/secret'
  
  resources :events, only: [:index, :new, :show, :create]
  root to: 'events#index'
  resources :user, only: [:show]
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
