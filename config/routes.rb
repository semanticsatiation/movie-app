Rails.application.routes.draw do

  resources :genres
  root "movies#index"
  get "signin" => "sessions#new"
  get "signup" => "users#new"

  get "/movies/genres" => "genres#index", as: "movies_genres"
  post "/movies/genres" => "genres#create"
  get "/movies/genres/new" => "genres#new", as: "new_movies_genre"
  get "/movies/genres/:id/edit"=> "genres#edit", as: "edit_movies_genre"
  get "/movies/genres/:id" => "genres#show", as: "movies_genre"
  patch "/movies/genres/:id" => "genres#update"
  put "/movies/genres/:id" => "genres#update"
  delete "/movies/genres/:id" => "genres#destroy"

  resources :movies do
    resources :reviews
    resources :favourites
  end

  resource :session

  resources :users

end

# get "/movies/filter/hits" => "movies#index", scope: "hits"
# get "/movies/filter/flops" => "movies#index", scope: "flops"
# get "movies/filter/:scope" => "movies#index", as: "filtered_movies"
#The three routes above were used for a lesson but were removed because of me already having a way to sort movies using a dropdown menu instead of using links

# get "movies" => "movies#index"
# get "movies/new" => "movies#new"
# get "movies/:id" => "movies#show", as: "movie"
# get "movies/:id/edit" => "movies#edit", as: "edit_movie"
# patch "movies/:id" => "movies#update"
