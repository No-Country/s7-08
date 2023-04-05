Rails.application.routes.draw do
  get 'users/show'
  resources :rooms do
    resources :messages
  end

    devise_scope :user do
        # Redirests signing out users back to sign-in
        get "users", to: "devise/sessions#new"
    end
  devise_for :users

 root 'time#index'

 get 'user/:id', to: 'users#show', as: 'user'
 
end
