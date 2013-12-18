class SessionsController < ApplicationController
  def new
  end

  def create
   seller = Seller.find_by_name(params[:name])	
   if seller && seller.authenticate(params[:password]) 			
   session[:seller_id] = seller.id	
  # redirect_to session[:return_to]		
   else  	 		
	flash.now[:error] = "Invalid name/password combination."      	
	render 'new'		         
    end

  end

  def destroy
	if signed_in?
		session[:seller_id] = nil					
	else
		flash[:notice] = "You need to sign in first"			
	end
	redirect_to signin_path
  end
  
  def newCart
  end

  def createCart
   cart = Cart.find_by_name(params[:name])	
		
   session[:cart_id] = cart.id	
  #redirect_to session[:return_to]		
   else  	 		
	flash.now[:error] = "Invalid name/password combination."      	
	render 'new'		         
    end
	def destroyCart
	if signed_in?
		session[:cart_id] = nil					
	else
		flash[:notice] = "You need to sign in first"			
	end
	redirect_to signin_path
  end

  end

  

