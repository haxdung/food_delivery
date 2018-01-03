class UsersController < ApplicationController

  def show
    @user = User.find_by id: params[:id]
    redirect_to root_url if @user.nil?
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      @user.send_activation_email
      flash[:info] = t("controllers.users.register.info")
      redirect_to @user
    else
      render "new"
    end
  end

  private
    def user_params
      params.require(:user).permit :name, :email, :username,
                                   :password, :password_confirmation,
                                   :address, :phone_number
    end
end
