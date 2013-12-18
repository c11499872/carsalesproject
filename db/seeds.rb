# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Seller.create(name: 'John Smith', emailadd: 'c11499872@gmail.com', password: 'password1',
				password_confirmation: 'password1', credit: 'dublin')
				
Seller.create(name: 'Mary Friels', emailadd: 'c11499872@mydit.ie', password: 'password1',
				password_confirmation: 'password1', credit: 'kildare')
				
Seller.create(name: 'Amy Richards', emailadd: 'c11499872@mydit.ie', password: 'password1',
				password_confirmation: 'password1', credit: 'Carlow')				

Seller.create(name: 'Andy Gomez', emailadd: 'c11499872@mydit.ie', password: 'password1',
				password_confirmation: 'password1', credit: 'Meath')				
				
Car.create( seller_id: 1, make: 'Alfa Romeo', model: '147', price: '6,499', 
		    colour: 'Outside temperature meter, Multi function steering wheel, 
					Mirrors electric, Isofix child seat anchor points, Immobiliser, 
					Height adjustable drivers seat, Foglights, Electric windows, Electric mirrors, 
					Drivers airbag, CD, Bumper and mirror in color, Bluetooth, Alloy wheels, Alarm remote controlled,
					Air conditioning, Adjustable steering column/wheel, Adjustable seats, ABS, 3x3 point rear seat belts, 17"
					light alloy wheels')				