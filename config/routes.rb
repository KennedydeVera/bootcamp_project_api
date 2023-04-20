Rails.application.routes.draw do
  # root to: "home#index" 
  # devise_for :users

  # resources :posts, only: :index
  
  # devise_for :users, path: 'auth', 
  # path_names: { sign_in: 'login', sign_out: 'logout', registration: 'signup' }, 
  # controllers: { sessions: 'api/v1/sessions', registrations: 'api/v1/registrations' }

  # namespace :api do
  #  # resources :posts, only: %i[index create]
  #   resources :users do
  #     post '/sign_up' => 'users#sign_up'
  #   end
  # end

  resource :users, only: [:create]
    post "/login", to: "users#login"
    get "/auto_login", to: "users#auto_login"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
