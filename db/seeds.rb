# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Classification.destroy_all
Item.destroy_all

books = Classification.create(title: "book", description: "Books, Magazines etc.")
electronics = Classification.create(title: "electronics", description: "Computer, Cellphone, etc")
clothing = Classification.create(title: "clothing", description: "Shoes, Jackets, Belts, etc")
jewelry = Classification.create(title: "jewelry", description: "Rings, watches, necklaces, etc")

first_name = ["Jane", "Ira", "George"]
last_name = ["Smith", "Jones", "Milekic"]
colors = ["red", "brown", "green", "white"]
clothingnames = ["shirt", "wallet", "pants", "suspenders"]
adjective = ["The best", "The perfect", "A most wonderful", "My favorite"]

20.times do
  title = colors.sample + " " + clothingnames.sample
  description = adjective.sample + " " + title
  owner = first_name.sample + " " + last_name.sample
  Item.create(title: title, description: description, owner: owner, classification: clothing)
end
puts "done!"