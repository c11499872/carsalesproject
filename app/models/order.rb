class Order < ActiveRecord::Base
has_many :line_items, :dependent => :destroy
	belongs_to :seller
	belongs_to :car
	
	
	def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
