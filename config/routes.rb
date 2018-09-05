Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
  get 'upload' => 'images#new', :as => "upload"
  get 'membership' => 'memberships#new'
  get 'events/calendar' => 'events#calendar'
  resources :albums, :images, :events, :posts
  root 'albums#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
