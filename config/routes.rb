Rails.application.routes.draw do
  get 'persons/profile', as: 'user_root'

  root 'articles#index'
  devise_for :users
  resources :articles do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
