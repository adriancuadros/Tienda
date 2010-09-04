Tienda::Application.routes.draw do
  resources :items

  resources :carts

  resources :products do
    member do 
      post :add_to_cart
    end
  end

end
