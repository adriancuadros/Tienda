class CartsController < ApplicationController
  
  def show
    
  end
  
  def confirm
    @cart.confirm!
    CartsMailer.confirm(@cart, current_user).deliver
    session[:cart_id] = nil
    flash[:notice] = 'Gracias por tu compra'
    redirect_to products_path
  end
  
end
