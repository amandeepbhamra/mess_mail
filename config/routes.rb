MessMail::Application.routes.draw do
    
  resources :contacts


    devise_for :users

    resources :users

    root :to => 'users#index'

end