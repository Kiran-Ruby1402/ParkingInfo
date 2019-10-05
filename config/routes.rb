Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 scope module: :api, defaults: { format: :json }  do
 	resources :parking_details
 end
end
