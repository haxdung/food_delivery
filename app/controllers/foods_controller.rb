class FoodsController < ApplicationController
  def show
    @food = Food.find params[:id]
    @foods = Food.all
    redirect_to root_url unless @food
    @comment_foods = @food.comment_foods.all
  end

  def index
    @foods = Food.search params[:search]
  end
end
