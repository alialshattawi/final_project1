Rails.application.routes.draw do
  resources :member_infos
  get 'home/index'

  devise_for :users
  root 'member_infos#index'
  
end
