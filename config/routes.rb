Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get "socks" => "socks#index"
  get "socks/new" => "socks#new"
  get "socks/:id" => "socks#show"
  post "socks" => "socks#create"
  get "socks/:id/edit" => "socks#edit"
  patch "socks/:id" => "socks#update"
  delete "socks/:id" => "socks#destroy"
end
