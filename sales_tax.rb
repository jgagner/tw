$:.unshift(*['lib'])
#just for convenience

require 'shopping_basket'
require 'basket_item'
require 'taxable_basket_item'
require 'imported_basket_item'
require 'taxable_imported_basket_item'

class SalesTax
  
  attr_reader :shopping_baskets

  def initialize
    @shopping_baskets = []

    #input 1
    @shopping_baskets << ShoppingBasket.new([
        BasketItem.new("book","12.49"),
        TaxableBasketItem.new("music CD","14.99"),
        BasketItem.new("chocolate bar","0.85")
        ])

    #input 2
    @shopping_baskets << ShoppingBasket.new([
         ImportedBasketItem.new("imported box of chocolates","10.00"),
         TaxableImportedBasketItem.new("imported bottle of perfume" ,"47.50")
    ])

    #input 3
    @shopping_baskets << ShoppingBasket.new([
            BasketItem.new("packet of headache pills", "9.75"),
            ImportedBasketItem.new("imported chocolates ", "11.25"),
            TaxableBasketItem.new("bottle of perfume", "18.99"),
            TaxableImportedBasketItem.new("imported bottle of perfume", "27.99")
        ])
  end
  
  def run
    puts "Thanks for running SalesTax!"
    puts "Please select a basket (1,2 or 3)"
    cart = gets.chomp

    case cart
      when "1"
       print_basket(shopping_baskets[0])
      when "2"
       print_basket(shopping_baskets[1])
      when "3"
       print_basket(shopping_baskets[2])
      else
        puts "Sorry, I don't know that cart"
    end
  end

  private
  
  def print_basket shopping_basket
    shopping_basket.each do | basket_item |
      print_basket_item basket_item
    end
    puts "Sales Taxes: #{to_currency_string_simple(shopping_basket.total_tax_amount)}"
    puts "Total: #{to_currency_string_simple(shopping_basket.total_purchase_amount)}"
  end

  def print_basket_item basket_item
    puts "#{basket_item.name}: #{to_currency_string_simple(basket_item.total_item_amount)}"
  end

  #this method may not be sufficient for all use cases, but works for ours.
  def to_currency_string_simple number
    ("%.2f" % number)
  end

end


if $0 == __FILE__
  SalesTax.new.run
end