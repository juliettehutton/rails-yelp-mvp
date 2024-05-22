puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
hang = {name: "Hang Bar", address: "686 Notre Dame O", phone_number: "514-910-2227", category: "Vietnamese"}
modavie = {name: "Modavie", address: "1 rue St-Paul O", phone_number: "514-287-9582", category: "French"}
mignon = {name: "Mignon Steak", address: "101 rue St-Paul O", phone_number: "514-844-9663", category: "Steakhouse"}
guillaume = {name: "Guillaume", address: "5170 St-Laurent", phone_number: "514-507-3199", category: "Bakery"}
osteria = {name: "Osteria MKT", address: "1333 Robert-Bourassa", phone_number: "514-849-2044", category: "Italian"}

[hang, modavie, mignon, guillaume, osteria].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
