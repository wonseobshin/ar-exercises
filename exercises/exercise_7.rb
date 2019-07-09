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
puts "new store name?"
query = gets.chomp

@querystore = Store.create(name: query)
err = @querystore.errors.messages

err.each do |e, messages|
    puts "#{e}: #{messages.first}"
end
