Rails.application.routes.draw do
  root 'pages#home'
  get 'ajout' => 'pages#ajout'
  get 'movies' => 'movies#index'
  get 'movies/:id' => 'movies#show'
  patch 'movies/:id' => 'movies#update'
  delete 'movies/:id' => 'movies#destroy'
  post 'movies' => 'movies#create'
    #   nomsouhaité => chemin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
