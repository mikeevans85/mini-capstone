Rails.application.routes.draw do
  namespace :api do
    get "/quilts" => "quilts#index"
    post "/quilts" => "quilts#create"
    get "/quilts/:id" => "quilts#show"
    patch "quilts/:id" => "quilts#update"
    delete "quilts/:id" => "quilts#destroy"
  end
end
