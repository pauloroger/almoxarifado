Rails.application.routes.draw do

	root to: 'material#index'
  resources :sessions

  get 'log_out', :to => 'sessions#destroy', :as => 'log_out'

end
