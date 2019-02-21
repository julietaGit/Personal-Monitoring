Rails.application.routes.draw do
  devise_for :users
  get 'personalmonitoring/index'
  get 'personalmonitoring/about'
  get 'personalmonitoring/article'
  get 'personalmonitoring/contact'
  get 'personalmonitoring/login'
  
  resources :plans
  resources :expenses
  resources :projects
  resources :joblists

  root to: 'personalmonitoring#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
