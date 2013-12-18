class CombineItemsInCart < ActiveRecord::Migration
  def up
  # replace multiple items for a single product in a cart with a single item
	Cart.all.each do |cart|
  # count the number of each product in the cart
	sums = cart.line_items.group(:car_id).sum(:number)
	sums.each do |car_id, number|
	if number > 1
  # remove individual items
	cart.line_items.where(car_id: car_id).delete_all
  # replace with a single item
	cart.line_items.create(car_id: car_id, number: number)
	end
	end
	end
  end

  def down
  # split items with quantity>1 into multiple items
	LineItem.where("number>1").each do |line_item|
  # add individual items
	line_item.number.times do
	LineItem.create cart_id: line_item.cart_id,
	car_id: line_item.car_id, number: 1
	end
  # remove original item
	line_item.destroy
	end

  end
end
