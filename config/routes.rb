Rails.application.routes.draw do

	root to: 'materials#index'
  resources :sessions
  resources :materials
  resources :users

  get 'log_out', :to => 'sessions#destroy', :as => 'log_out'

end
