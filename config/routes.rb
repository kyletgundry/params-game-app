Rails.application.routes.draw do
  get "/params_name" => "params#name"
  get "/params_number" => "params#form_number"
  post "/params_result_number" => "params#number"
end
