Rails.application.routes.draw do
  namespace :api do
    get "/quilts/:id" => "quilts#show"
    get "/quilts" => "quilts#index"
  end
end
