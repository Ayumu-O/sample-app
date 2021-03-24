Rails.application.routes.draw do
  root 'posts#home'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'signup', to: 'users/registrations#new'
    get 'users/:id', to: 'users/registrations#detail'
    get 'index', to: 'users/registrations#index'
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end

  resources :posts, only: %i[home show create destroy] do
    resources :comments, only: [:create, :destroy]
  end
end
