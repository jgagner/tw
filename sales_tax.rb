#$:.unshift(*['lib'])
#just for convenience
Dir[File.dirname(__FILE__) + 'lib/*.rb'].each {|file| require file }

puts "Please select a basket (1,2 or 3)"
cart = gets.chomp


case cart
  when "1"
    puts "Selected cart 1"
  when "2"
    puts "Select cart 2"
  when "3"
    puts "Selected cart 3"
  else
    puts "Sorry, unknown cart."
end