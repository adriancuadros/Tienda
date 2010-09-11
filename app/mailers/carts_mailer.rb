class CartsMailer < ActionMailer::Base
  default :from => "no-responder@latienda.com"
  
  def confirm(cart, user)
    @cart = cart
    @user = user
    mail(:to => @user.email, :subject => 'Confirmacion de compra')
  end
  
end
