Rails.application.routes.draw do
  namespace :api do
    get "/quilts_url" => "quilts#all_quilts_method"
    get "/quilt1_url" => "quilts#quilt_one_method"
    get "/quilt2_url" => "quilts#quilt_two_method"
    get "/quilt3_url" => "quilts#quilt_three_method"
    get "/quilt4_url" => "quilts#quilt_four_method"
  end
end
