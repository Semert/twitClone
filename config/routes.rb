Rails.application.routes.draw do
  resources :t_weets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 't_weets#index'
end
