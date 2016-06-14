Rails.application.routes.draw do
  get 'songs/index'

  get 'songs/show'

  get 'artists/index'

  get 'artists/show'

  root 'artists#index'

  resources :artists
end
