Rails.application.routes.draw do
  namespace :api do
    get "/quilts" => "quilts#index"
    post "/quilts" => "quilts#create"
    get "/quilts/:id" => "quilts#show"
    patch "quilts/:id" => "quilts#update"
    delete "quilts/:id" => "quilts#destroy"
 
    get "/images" => "images#index"
    post "/images" => "images#create"
    get "/images/:id" => "images#show"
    patch "images/:id" => "images#update"
    delete "images/:id" => "images#destroy"
  end
end
