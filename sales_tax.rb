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

#### FABIO
class Product
  attr_accessor :price, :name, :quantity

  def initialize(price, name, quantity)
    @price = price
    @name = name
  end

  @tax = 0.10

  def total_tax
    @price * @tax
  end

  def total_price_with_tax
    @price + total_tax
  end

end

class ImportedProduct < Product
  @tax = 0.15
end

class ImportedExemptProduct < Product
  @tax = 0.05
end

perfume = ImportedProduct.new(23.99, "CK")
book = ExemptProduct.new(12.49, "Moby Dick")

class Cart
  attr_accessor :products

  def initialize
    @products = []

  def add(product)
    @products << product
  end

  def print_receipt
    @products.each do |product|
      product.total_price_with_tax
    end
  end

end

cart1 = Cart.new
cart1.add(book)
cart1.add(perfume)
cart1.print_receipt

  # INPUTS
  list_hash = {}
  item = ""
  price = ""

  puts "Would you like to add an item to the list?"
  answer = gets.chomp.downcase
  while answer != "no" do
    puts "Enter item:"
    @item = gets.chomp
    puts "Enter price:"
    @price = gets.chomp
    puts "Enter quantity:"
    @quantity = gets.chomp
    puts "Would you like to add an item to the list?"
    answer = gets.chomp.downcase
    list_hash[@quantity] = @item, @price
  end

  puts "Okay, all done. Here's your receipt:"
  list_hash.each do |key, value, value2|
    puts "#{value2} #{key}: #{value}"
  end

    # new_list = Hash.new(item, price)
    # new_list = Sales_taxes.new(@item, @price)
    # new_list.hash
    # puts new_list
    #

    #{item.to_s}, #{price.to_i.round(3)}
