Rails.application.routes.draw do
  get 'bets/create'
  get 'roulettes/create'
  get 'roulettes/index'
  get 'users/resta_saldo'

  root "roulettes#index"

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
