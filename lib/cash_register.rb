class CashRegister
    attr_accessor :items, :discount, :total, :last_transaction

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(array, price, quantity=1)
        @total += price * quantity
        quantity.times do 
            items << array
        end
        self.last_transaction = price * quantity
    end
    
    def apply_discount
        if @discount != 0
            @total -= @total * @discount / 100
            "After the discount, the total comes to $#{total}."
        else
             "There is no discount to apply."
        end
    end
    def void_last_transaction
        self.total = self.total - self.last_transaction
    end

end
