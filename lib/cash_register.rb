require 'pry'

class CashRegister
  attr_accessor :discount, :total, :items, :prices


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
    @prices = []
  end

  def add_item(title, price, quantity=1)
    quantity.times { @items << title }
    @prices << price
    @total += price * quantity
  end

  def apply_discount
    if @discount != 0
      @total -= @total/(100/@discount)
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @prices[-1]
  end

end
