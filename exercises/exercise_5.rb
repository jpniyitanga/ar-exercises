require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
puts "-----TOTAL ANNUAL REVENUE-----"
puts Store.sum("annual_revenue")

puts "-----AVERAGE ANNUAL REVENUE-----"
puts Store.average("annual_revenue")

puts "-----NUMBER OF STORES GENERATING MORE THAN $1M-----"
pp Store.where("annual_revenue >= ?", 1000000).count
