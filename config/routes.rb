Rails.application.routes.draw do


  get 'mostrarcomentarios/show'

  get 'mostrarcomentarios/index'

  devise_for :users
  namespace :admin do
    
    resources :home, only: [:index]

     resources :users

     resources :coments


    
  end

  root 'home#index'

  get 'bienvenida/index'

  get 'bienvenida/hola'

  get 'android/index'

  get 'android/history'

  get 'android/caract'

  get 'android/act'

  get 'ios/index'

  get 'ios/history'

  get 'ios/caract'

  get 'ios/act'

  get 'android/comparacion'

  get 'android/links'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
