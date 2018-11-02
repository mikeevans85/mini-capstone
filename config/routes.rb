Rails.application.routes.draw do
  namespace :api do
    get "/quilts" => "quilts#index"
    post "/quilts" => "quilts#create"
    get "/quilts/:id" => "quilts#show"
    patch "quilts/:id" => "quilts#update"
    delete "quilts/:id" => "quilts#destroy"
 
    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"

    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"
    delete "/carted_products" => "carted_products#destroy"

  end

  get "/quilts" => "quilts#index"
  get "/quilts/new" => "quilts#new"
  post "/quilts" => "quilts#create"
  get "/quilts/:id" => "quilts#show"
  get "/quilts/:id/edit" => "quilts#edit"
  patch "/quilts/:id" => "quilts#update"
  delete "quilts/:id" => "quilts#destroy"

end
