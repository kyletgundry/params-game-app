Rails.application.routes.draw do
  get "/params_name" => "params#name"
  get "/params_number/:guess" => "params#number"
end
