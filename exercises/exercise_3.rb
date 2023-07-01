require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
@store3 = Store.find_by(id: 3)

@store3.destroy

#Need to re-run exercise_1 to recreate the Gastown store deleted above

puts "There are #{Store.count} stores in the database."


