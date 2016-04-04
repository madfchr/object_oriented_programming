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

  class Sales_taxes
    attr_accessor :item, :price

    def initialize(item, price, quantity)
      @item = item
      @price = price
      @quantity = quantity
    end


    # def ==(other)
    #   self.class == other and
    #   other.item == @item and
    #   other.price == @price
    # end

    def hash
      @item.hash ^ @price.hash
    end

    def basic_tax
      if list.has_key?("book", "food", "medical") ### TEST IT
        price = price
      else
        price *= 1.10
      end
    end

    def import_duty
      if list.has_key?("imported") ### TEST IT
        price *= 1.05
      else
        price = price
      end
    end
  end


    # INPUTS
    # list_hash = {}
    # item = ""
    # price = ""

    # puts "Would you like to add an item to the list?"
    # answer = gets.chomp.downcase
    # while answer != "no" do
    #   puts "Enter item:"
    #   @item = gets.chomp
    #   puts "Enter price:"
    #   @price = gets.chomp
    #   puts "Enter quantity:"
    #   @quantity = gets.chomp
    #   puts "Would you like to add an item to the list?"
    #   answer = gets.chomp.downcase
    #   list_hash[@quantity] = @item, @price
    # end
    #
    # puts "Okay, all done. Here's your receipt:"
    # list_hash.each do |key, value, value2|
    #   puts "#{value2} #{key}: #{value}"
    # end

      # new_list = Hash.new(item, price)
      # new_list = Sales_taxes.new(@item, @price)
      # new_list.hash
      # puts new_list
      #

      #{item.to_s}, #{price.to_i.round(3)}
