Rails.application.routes.draw do
  resources :dlls
  resources :releases
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'
end
