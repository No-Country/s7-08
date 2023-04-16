Rails.application.routes.draw do
  default_url_options host: "localhost:3000"

  resources :rooms do
    resources :messages
  end
  #session new as
  root "rooms#index"
  devise_for :users,
             controllers: {
               sessions: "users/sessions",
               registrations: "users/registrations"
             }
  get "user/:id", to: "users#show", as: "user"
end
