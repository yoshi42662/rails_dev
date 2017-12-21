Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get :home, to: 'home#index'

  # devise_scope :user do
  #   get 'sign_in', to: 'devise/sessions#new'
  # end
end
