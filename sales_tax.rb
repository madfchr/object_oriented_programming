
class Product
  attr_accessor :price, :name
  # I won't be using quantity for now to simplify things.

  def initialize(price, name)
    @price = price
    @name = name
    # @quantity = quantity
  end

  def tax_rate
    0.10
  end

  def total_tax
    @price * tax_rate
  end

  def total_price_with_tax
    @price + total_tax
  end
end

class ExemptProduct < Product
  def tax_rate
    0
  end
end

class ImportedProduct < Product
  def tax_rate
    0.15
  end
end

class ImportedExemptProduct < Product
  def tax_rate
    0.05
  end
end

class Cart
  attr_accessor :products

  def initialize
    @products = []
  end

  def add(product)
    @products << product
  end

  def print_receipt
    @products.each do |product|
      puts "1 #{product.name} : #{product.price}"
      puts "Total tax : #{product.total_tax}"
      puts "Total price (including tax): #{product.total_price_with_tax}"
    end
  end
end

perfume = ImportedProduct.new(23.99, "CK")
book = ExemptProduct.new(12.49, "Moby Dick")
imported_book = ImportedExemptProduct.new(15.99, "Shantaram")

cart1 = Cart.new
cart1.add(book)
cart1.add(perfume)
cart1.add(imported_book)
cart1.print_receipt
