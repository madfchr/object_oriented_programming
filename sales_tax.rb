class Sales_taxes
  def initialize(item, price)
    @item = item
    @price = price
  end

  def basic_tax
  end

  def import_duty
  end
end

  # INPUTS
  puts "Would you like to add an item to the list?"
  answer = gets.chomp.downcase
  if answer == "yes"
    puts "Enter item:"
    item = gets.chomp
    puts "Enter price:"
    price = gets.chomp
  else
    puts "Okay, here's your receipt."
    puts # RECEIPT HASH

  end
