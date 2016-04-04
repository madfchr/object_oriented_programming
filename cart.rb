require "sales_tax.rb"
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
      product.total_price_with_tax
    end
  end
end

cart1 = Cart.new
cart1.add(book)
cart1.add(perfume)
cart1.add(imported_book)
cart1.print_receipt
