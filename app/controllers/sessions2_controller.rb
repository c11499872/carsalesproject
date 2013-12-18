class Sessions2Controller < ApplicationController
  def new
  end

   def create
  seller = Seller.find_by_name(params[:name])	
   if seller && seller.authenticate(params[:password]) 			
   session2[:seller_id] = seller.id		
   redirect_to seller		
   else  	 		
	flash.now[:error] = "Invalid name/password combination."      	
	render 'new'		     
    end

  end

  def destroy
	if signed_in2?
		session2[:seller_id] = nil					
	else
		flash[:notice] = "You need to sign in first"			
	end
	redirect_to signin_path
  end
end 
