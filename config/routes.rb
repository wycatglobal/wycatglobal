Rails.application.routes.draw do
  get 'images/new'
  get 'images/create'
  get 'images/edit'
  get 'images/update'
  get 'images/destroy'
  get 'images/index'
  get 'albums/new'
  get 'albums/create'
  get 'albums/edit'
  get 'albums/update'
  get 'albums/destroy'
  get 'albums/show'

  resources :albums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
