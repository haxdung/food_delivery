class OrdersController < ApplicationController
  def index
    @orders = Order.all.paginate page: params[:page], per_page: 10
  end

  def show
    @order = Order.find params[:id]
  end

  def new
    @order = Order.new
  end
end
