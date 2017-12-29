class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to current_user
    end
  end

  def create
    if params[:session].present?
      user = User.find_by username: params[:session][:username]
      if user && user.authenticate(params[:session][:password])
        if user.activated?
          log_in user
          params[:session][:remember_me] == "1" ? remember(user) : forget(user)
          flash[:success] = t "controllers.sessions.create.success"
          redirect_to user_url(user.id)
        else
          message  = t "controllers.sessions.create.message1"
          message += t "controllers.sessions.create.message2"
          flash[:warning] = message
          redirect_to root_url
        end
      else
        flash.now[:danger] = t "controllers.sessions.create.danger"
        render "new"
      end
    else
      begin
        user_id = params[:user_id]
        name = params[:name]
        user = User.auth_facebook user_id, name
        log_in user
        flash[:success] = t "controllers.sessions.create.success"
        redirect_to root_url
      rescue
        flash.now[:danger] = t "controllers.sessions.create.danger"
      end
    end
  end

  def destroy
    log_out if logged_in?
    flash[:danger] = t "controllers.sessions.destroy.success"
    respond_to do |format|
      format.js { render inline: "location.reload()" }
    end
  end

  def new
  end
end
