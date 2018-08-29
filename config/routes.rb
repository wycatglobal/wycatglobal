Rails.application.routes.draw do

  get 'upload' => 'images#new', :as => "upload"
  resources :albums, :images
  root 'images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
