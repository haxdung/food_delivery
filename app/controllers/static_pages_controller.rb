class StaticPagesController < ApplicationController
  def home
    @all_orders = Order.all.paginate page: params[:page], per_page: 10
    @new_foods = Food.newfood
    @hot_foods = Food.hotfood
    @hot_chefs = User.hotchef
    @all_foods = Food.all.paginate page: params[:page], per_page: 18

    respond_to do |format|
      format.html
      format.js
    end
  end

  def search
    if params[:search]
      @foods = Food.search params[:search]
      if !@foods
        flash[:warning] = t("views.static_pages.search.nomatch")
        redirect_to root_url
      else
        render :partial => "static_pages/show_all_foods"
      end
    end
  end
end
