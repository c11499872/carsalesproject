class Blogmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.blogmailer.register.subject
  #
  def register(seller)
      @seller = seller 
    mail(:to => seller.emailadd, :subject => "Welcome to the Car Sales site") 

  end
  
  def order(order)
      @order = order 
    mail(:to => order.email, :subject => "Your order has been confirmed") 

  end
  
  def subscribe(user)
      @user = user
    mail(:to => user.email, :subject => "Thank you for subscribing") 

  end
end
