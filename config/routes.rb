Rails.application.routes.draw do
  namespace :api do
    get "/quilts_url" => "quilts#all_quilts_method"
  end
end
