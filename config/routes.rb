Rails.application.routes.draw do

  get 'upload' => 'images#new', :as => "upload"
  get 'membership' => 'memberships#new'
  resources :albums, :images, :events
  root 'albums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
