class SessionsController < ApplicationController
  def new; end

  def create
    param_session = params[:session]
    if param_session.present?
      user = User.find_by email: param_session[:email].downcase
      check_index user
    else
      omniauth_email user
      redirect_to root_url
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private

  def check_index user
    if check_user_authenticate user
      check_user_activate user
    else
      flash.now[:danger] = t "controller.sessions.danger"
      render :new
    end
  end

  def check_user_authenticate user
    user && user.authenticate(params[:session][:password])
  end

  def check_user_validate user
    log_in user
    params[:session][:remember_me] == "1" ? remember(user) : forget(user)
    if current_user.admin?
      redirect_to admin_path
    else
      redirect_back_or user
    end
  end

  def check_user_activate user
    if user.activated?
      check_user_validate user
    else
      message  = t "controller.sessions.not_activated"
      message += t "controller.sessions.check"
      flash[:warning] = message
      redirect_to root_url
    end
  end

  def omniauth_email user
    user = Fb.from_omniauth(request.env["omniauth.auth"])
    session[:user_id] = user.id
    flash[:success] = "Welcome, #{user.email}!"
  rescue SyntaxError
    flash[:warning] = "Error!!!"
  end
end
