Rails.application.routes.draw do
  
<<<<<<< HEAD
  resources :artifacts
  # Con esta sintaxis nos aseguramos que la ruta de projects este bajo tenants, exp: tenants/projects
  resources :tenants do
    resources :projects
  end
=======
  resources :projects
>>>>>>> old-rev
  resources :members
  get 'home/index'

   root :to => "home#index"

    
  # *MUST* come *BEFORE* devise's definitions (below)
  as :user do   
    match 'user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end

  devise_for :users, :controllers => { 
    :registrations => "milia/registrations",
    :confirmations => "confirmations",
    :sessions => "milia/sessions", 
    :passwords => "milia/passwords", 
  }


end
