Rails.application.routes.draw do
  get 'home/index'
  get 'home/new'
  post 'home/new'
    post 'home/index'


  devise_for :users
  get 'images/index'

  get 'images/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'locations#index'

get 'uploads/index'
post 'uploads/index'
get 'uploads/new'
post 'uploads/new'

resources :images, only: [:index, :create]
	# get '/upload' => 'location#upload_create'
	# post 'locations/upload_create'
	# get '/upload' => 'location#upload_new'
	# post 'locations/upload_new'
# post 'locations/index'
resources :locations

get "location/new_release" => 'location#new_release', :as => :new_release

end
