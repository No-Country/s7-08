Rails.application.routes.draw do

  resources :rooms do
    resources :messages
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
    # devise_scope :user do
    #     # Redirests signing out users back to sign-in
    #     get "users", to: "devise/sessions#new"
    # end
 

 root 'time#index'

 get 'user/:id', to: 'users#show', as: 'user'
 
end
