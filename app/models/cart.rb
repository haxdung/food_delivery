class Cart < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :food, optional: true

  def Cart.total
    carts = Cart.all
    carts.each do |c|
      total = total +  c.quantity * c.price
    end
    return total
  end
end
