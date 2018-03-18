Rails.application.routes.draw do

  scope path: "api" do
    resources :animals
  end

# we can setup routes for all the restful routes, using the resources route above instead of creating individual routes as commented out below.

  # # get ALL ANIMALS - INDEX route
  # get 'animals' => 'animals#index'
  # # get one by animal by id - SHOW route
  # get 'animals/:id' => 'animals#show'
  # # CREATE one animal - POST route
  # post 'animals' => 'animals#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
