Rails.application.routes.draw do
# rails routes para ver las rutas en consola

  root to: "static_pages#index"
  resource :users
  get "sessions/new" => "sessions#new"
  post "sessions/create" => "sessions#create"
  delete "sessions/delete" => "sessions#delete"
  resource :chirps

end
