Rails.application.routes.draw do
  get "/params_name" => "params#name"
  get "/params_number" => "params#number"
end
