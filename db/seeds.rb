# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
food_types = ["Curry", "Dessert", "Sides","Breakfast"]
food_types.each{|d| FoodType.where(:name => d).first_or_create}

food_preferences = ["Vegetariano", "Vegano", "carnivoro", "Dairy"]
food_preferences.each { |comida| FoodPreference.where(:name => comida).first_or_create }

cuisines = ["italiana", "mexicana", "india", "china"]
cuisines.each { |tipo| Cuisine.where(:name => tipo).first_or_create }