Rails.application.routes.draw do
  resources :line_items
  resources :courses
  resources :topics
  get 'store/index'
  resources :topics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
