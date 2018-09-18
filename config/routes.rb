Rails.application.routes.draw do

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
  get 'upload' => 'images#new', :as => "upload"
  get 'membership' => 'memberships#new'
  get 'events/calendar' => 'events#calendar'
  resources :albums, :images, :events, :posts, :users
  root 'albums#index'
  get '/test' => 'memberships#test'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
