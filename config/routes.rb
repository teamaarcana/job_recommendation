Rails.application.routes.draw do

  devise_for :recuitors, path: 'recuitors'
  # eg. http://localhost:3000/users/sign_in
  devise_for :seekers, path: 'seekers'
  # eg. http://localhost:3000/admins/sign_in
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'jobs#index'

  resources :jobs
end
