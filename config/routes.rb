Tienda::Application.routes.draw do
  
  devise_for :users

  root :to => "products#index"
  
  resources :items

  resources :carts do
    member do
      post :confirm
    end
  end

  resources :products do
    member do 
      post :add_to_cart
    end
  end

end
