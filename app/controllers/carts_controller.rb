class CartsController < ApplicationController

  def index
    if !current_user.nil?
      @carts = current_user.carts.all
    else
      @carts = Cart.where.not(session_idails: null)
    end
  end

  def update
    byebug
    hash = Hash.new
    params[:cart][:id].each_with_index {|item,index|
      hash[item] = {quantity: params[:cart][:quantity][index]}
    }
    if Cart.update(hash.keys,hash.values)
      update_cart
      render json: {
          status: "done"
      }
    end
  end

  private
  def update_cart
    Cart.all.each do |c|
      c.update_attributes(total_money: c.quantity * c.food.price)
    end
  end
end
