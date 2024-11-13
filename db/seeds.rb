# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
Restaurant.create!(name: "Il Giardinetto", address: "14 avenue Jean Jaurès", category: "italian")
puts "Created Il Giardinetto"
Restaurant.create!(name: "L'Andréa", address: "6 Boulevard General de Gaulle", category: "french")
puts "Created Roberto"
Restaurant.create!(name: "Sukiyaki Shop", address: "3 rue de Mainville", category: "japanese")
puts "Created Sukiyaki Shop"
Restaurant.create!(name: "Jun Fa", address: "4 place de la Republique", category: "chinese")
puts "Created Jun Fa"
Restaurant.create!(name: "Label'ge frite", address: "56 rue Saint-André des Arts", category: "belgian")
puts "Created Sukiyaki Shop"

puts "Finished! Created #{Restaurant.count} restaurants."
