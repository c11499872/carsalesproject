module ApplicationHelper
def signed_in?
       if session[:seller_id].nil?
	return
       else
	@current_seller = Seller.find_by_id(session[:seller_id])
       end
  end




end
