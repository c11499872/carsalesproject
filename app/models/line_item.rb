class LineItem < ActiveRecord::Base
 
belongs_to :order
belongs_to :car
belongs_to :cart

def total_price
	car.price * number
end


end
