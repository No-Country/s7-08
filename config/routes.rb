Rails.application.routes.draw do

  resources :rooms do
    resources :messages
    collection do
      post :search
    end
  end

  get 'rooms/leave/:id', to: 'rooms#leave', as: 'leave_room'
  get 'rooms/join/:id', to: 'rooms#join', as: 'join_room' 

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
