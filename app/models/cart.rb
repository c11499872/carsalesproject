class Cart < ActiveRecord::Base
has_many :line_items, dependent: :destroy

def add_car(car_id)
current_item = line_items.find_by_car_id(car_id)
if current_item
current_item.number += 1
else
current_item = line_items.build(car_id: car_id)
end
current_item
end

def total_price
line_items.to_a.sum { |item| item.total_price }
end

end
