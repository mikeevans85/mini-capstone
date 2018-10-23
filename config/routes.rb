Rails.application.routes.draw do
  namespace :api do
    get "/quilts" => "quilts#index"
    post "/quilts" => "quilts#create"
    get "/quilts/:id" => "quilts#show"
    patch "quilts/:id" => "quilts#update"
    delete "quilts/:id" => "quilts#destroy"
  end

  namespace :api do
    get "/suppliers" => "suppliers#index"
    post "/suppliers" => "suppliers#create"
    get "/suppliers/:id" => "suppliers#show"
    patch "suppliers/:id" => "suppliers#update"
    delete "suppliers/:id" => "suppliers#destroy"
  end
end
