Rails.application.routes.draw do

	root to: 'materials#index'
  resources :sessions
  resources :materials
  resources :users
  resources :stocks

  get 'stocks/new/:mat_id/', :to => 'stocks#new', as:'stock_handle'

  get 'log_out', :to => 'sessions#destroy', :as => 'log_out'

end
