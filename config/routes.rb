Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  resources :pokemons
  patch 'capture/:id' => 'pokemons#capture', as: 'capture'
  patch 'damage/:id' => 'pokemons#damage', as: 'damage'
end
