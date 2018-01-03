class CartsController < ApplicationController
  def create
    if logged_in?
      @cart = Cart.find_or_create_by(user_id: current_user.id, food_id: params[:food_id])
    else
      @cart = Cart.find_or_create_by(session_id: request.session_options[:id], food_id: params[:food_id])
    end

    if @cart.quantity
      quantity = @cart.quantity + params[:quantity].to_i
      @cart.update_attributes(quantity: quantity)
    else
      @cart.quantity = params[:quantity]
      @cart.save
    end
    respond_to do |format|
      format.js
    end
  end
end
