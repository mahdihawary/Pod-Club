Rails.application.routes.draw do
   get 'episodes/search', to: 'episodes#search'
  resources :episodes do 
    resources :comments
  end
  resources :club_episodes
  resources :clubs
  resources :user_clubs
  resources :users



  get "/", to: "users#homepage", as: "homepage"
  get "/login", to: "users#login", as: "login"
  post "/login", to: "users#handle_login"
  delete "/logout", to: "users#logout"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
