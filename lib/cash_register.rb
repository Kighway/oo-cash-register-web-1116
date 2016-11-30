class CashRegister

  attr_accessor :total, :last_transaction

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def discount
    @discount
  end

  def add_item (title, price, quantity = 1)
    quantity.times do
      @items << title
    end
    current_transaction = price*quantity
    @total += current_transaction
    @last_transaction = current_transaction
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      @total =  (@total*((100.0-discount)/100.0)).to_i
      "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

  #not needed due to attr_accessor
  # def total
  #   @total
  # end

end
