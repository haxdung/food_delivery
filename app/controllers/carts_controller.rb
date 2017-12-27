class CartsController < ApplicationController

  def index
    if !current_user.nil?
      @carts = current_user.carts.all
    else
      @carts = Cart.where.not(session_id: null)
    end
  end

  def update
    # byebug
    cart = Cart.find(params[:cart][:id])
    carts = Cart.all
    total = 0
    carts.each do |e|
      total = total + e.quantity * e.food.price
    end
    # byebug
    if cart.update_attributes(quantity: params[:cart][:quantity])
      render json: {
          total: total
      }
    end
  end
end
