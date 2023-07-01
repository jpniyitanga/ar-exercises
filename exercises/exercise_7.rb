require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}

end


class Store < ActiveRecord::Base 
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
end

puts "Name for new store?"
inputted_name = gets.chomp
inputted_name = Store.create(name: inputted_name)
puts "-----CHECK IF NEW NAME IS VALID-----"
puts inputted_name.valid?

puts "-----DISPLAY ERROR MESSAGE-----"
puts inputted_name.errors.details


