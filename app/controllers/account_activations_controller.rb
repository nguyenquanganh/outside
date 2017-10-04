class AccountActivationsController < ApplicationController
  def edit
    user = User.find_by email: params[:email]
    if user && user.valid_active_account?(params[:id])
      activated_account user
    else
      flash[:danger] = t "controller.activate.no_activated"
      redirect_to root_url
    end
  end

  private

  def activated_account user
    user = User.find_by email: params[:email]
    user.activate
    log_in user
    flash[:success] = t "controller.activate.activated"
    redirect_to user
  end
end
