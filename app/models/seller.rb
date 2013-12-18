class Seller < ActiveRecord::Base
	has_many :cars, :dependent => :destroy
	validates :name, presence: true, uniqueness: true
	validates :credit, presence: true
	validates :password, length: { minimum: 8 }
	has_secure_password
	
	
	geocoded_by :address
	after_validation :geocode, :if => :address_changed?


end
