class Car < ActiveRecord::Base
	belongs_to :seller
	validates :make, presence: true
	validates :model, presence: true
	validates :price, :numericality => { :greater_than_or_equal_to => 1 }
	validates :colour, presence: true
	
	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
	
	
	has_attached_file :image
	geocoded_by :location
	after_validation :geocode, :if => :location_changed?
	
	

private
# ensure that there are no line items referencing this product
def ensure_not_referenced_by_any_line_item
	if line_items.empty?
		return true
	else
		errors.add(:base, 'Line Items present')
		return false
	end
end

def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['make LIKE  ?', search_condition])
end

end

