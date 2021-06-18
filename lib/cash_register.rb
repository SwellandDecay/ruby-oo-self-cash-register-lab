require 'pry'

class CashRegister

    attr_accessor :total, :items
    attr_reader :discount, :last

    def initialize(discount=0.0)
        @total = 0.0
        @discount = discount
        @items = []
        @last = nil
    end

    def add_item(title, price, quantity=1)
        @total += price*quantity
        quantity.times {@items << title}
        @last = price*quantity
    end

    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        end
        @total -= @total*@discount/100
        "After the discount, the total comes to $#{@total.to_int}."
    end

    def items
        @items
    end

    def void_last_transaction
        @items = @items.pop
        if @last == nil
            return 0.0
        end
        @total -= @last
    end

#     CashRegister
#   ::new
#     sets an instance variable @total on initialization to zero (FAILED - 1)
#     optionally takes an employee discount on initialization (FAILED - 2)
#   #total
#     returns the current total (FAILED - 3)
#   #add_item
#     accepts a title and a price and increases the total (FAILED - 4)
#     also accepts an optional quantity (FAILED - 5)
#     doesn't forget about the previous total (FAILED - 6)
#   #apply_discount
#     the cash register was initialized with an employee discount
#       applies the discount to the total price (FAILED - 7)
#       returns success message with updated total (FAILED - 8)
#       reduces the total (FAILED - 9)
#     the cash register was not initialized with an employee discount
#       returns a string error message that there is no discount to apply (FAILED - 10)
#   #items
#     returns an array containing all items that have been added (FAILED - 11)
#   #void_last_transaction
#     subtracts the last item from the total (FAILED - 12)
#     returns the total to 0.0 if all items have been removed (FAILED - 13)



    

end