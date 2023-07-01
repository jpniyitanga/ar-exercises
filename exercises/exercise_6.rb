require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Alice", last_name: "Smith", hourly_rate: 55)
@store2.employees.create(first_name: "Alpha", last_name: "Romeo", hourly_rate: 35)
@store2.employees.create(first_name: "Mary", last_name: "Roman", hourly_rate: 70)
@store2.employees.create(first_name: "Susan", last_name: "Nemis", hourly_rate: 40.55)
@store3.employees.create(first_name: "Allan", last_name: "Koring", hourly_rate: 60)
@store3.employees.create(first_name: "Andrea", last_name: "Aderemi", hourly_rate: 51)
@store3.employees.create(first_name: "Allison", last_name: "Thompson", hourly_rate: 46)

