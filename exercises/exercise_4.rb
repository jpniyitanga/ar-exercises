require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name: "Surrey", annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
whistler = Store.create(name: "Whistler", annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)
yaletown = Store.create(name: "Yaletown", annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)
@womens_stores = Store.where(womens_apparel: true)

puts "-------ALL MENS STORES------"
@mens_stores.map {|store| 
  puts "Name: " + store.name + ", Annual revenue: " + store.annual_revenue.to_s}


puts "----WOMENS STORES WITH LESS THEN $1M IN ANNUAL REVENUE----"
@womens_stores.map{ |store|
  if store.annual_revenue < 1000000
    puts "Name: " + store.name + ", Annual revenue: " + store.annual_revenue.to_s
  end 
}

