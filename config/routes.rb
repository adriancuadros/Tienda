Tienda::Application.routes.draw do
  
  root :to => "products#index"
  
  resources :items

  resources :carts

  resources :products do
    member do 
      post :add_to_cart
    end
  end

end
