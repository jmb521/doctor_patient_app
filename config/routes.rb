Rails.application.routes.draw do
  resources :appointments
  resources :patients
  resources :doctors do 
    resources :appointments
  end

  namespace :admin do 
    resources :doctors do
      
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
