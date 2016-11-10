Rails.application.routes.draw do
  resources :counter, only: [:show, :create]
  resources :page, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
