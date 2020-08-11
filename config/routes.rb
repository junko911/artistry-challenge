Rails.application.routes.draw do
  get 'artist_instruments/new'
  get 'artist_instruments/create'
  resources :artists, only: [:index, :show, :new, :create]
  resources :instruments, only: [:index]
  resources :artist_instruments, only: [:new, :create]
end
