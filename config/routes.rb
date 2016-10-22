Rails.application.routes.draw do

  devise_for :users
  namespace :admin do
    
    resources :home, only: [:index]

     resources :student
    
  end

  root 'home#index'

 s

  get 'bienvenida/index'

  get 'bienvenida/hola'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
