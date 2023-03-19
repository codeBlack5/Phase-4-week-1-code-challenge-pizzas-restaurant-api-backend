Rails.application.routes.draw do
  resources :restaurant_pizzas
  resources :pizzas
  resources :restaurants
end
