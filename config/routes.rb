Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "signup", :to => "users/registrations#new"
    get "user/:id", :to => "users/registrations#detail"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  resources :posts, only: [:index, :show, :create]
end
