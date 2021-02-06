Rails.application.routes.draw do
  devise_for :accounts


  get 'about', to: 'about#index'
  
  root to: "public#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
