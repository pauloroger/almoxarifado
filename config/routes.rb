Rails.application.routes.draw do

	root to: 'materials#index'
  resources :sessions
  resources :materials

  get 'log_out', :to => 'sessions#destroy', :as => 'log_out'

end
