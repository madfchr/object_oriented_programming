# def create_list
#   puts "What's the list name?"
#   name = gets.chomp
#   hash = {"name" => name, "items" => Array.new}
#   return Hash
# end
#
# def add_list_items
#   puts "What's the item called?"
#   item_name = gets.chomp
#
#   hash = { "name" => name }
#   return hash
# end
#
# list = create_list
# puts list.inspect

# list = Hash.new

puts "Would you like to add an item to the list?"
answer = gets.chomp.downcase
while answer != "no"
  puts "Enter item:"
  item = gets.chomp
  puts "Enter price:"
  price = gets.chomp
  puts "Would you like to add an item to the list?"
  answer = gets.chomp.downcase
end
  puts "Okay, all done. Here's your receipt."

  new_list = Hash.new(item, price)

  puts new_list
