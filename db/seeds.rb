# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

HourGlass.create([
  { name: "Antique", description: "Timeless design", price: 100.0 },
  { name: "Antique Generic", description: "Timeless design", price: 120.0 },
  { name: "Antique DeLuxe", description: "Timeless design", price: 140.0 },
  { name: "Antique Micro", description: "Timeless design", price: 110.0 },
  { name: "Antique XXXL", description: "Timeless design", price: 190.0 }])
