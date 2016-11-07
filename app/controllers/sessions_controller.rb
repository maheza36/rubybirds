class SessionsController < ApplicationController
include SessionsHelper

  def new
  end

  def create
    user = User.find_by_email(sessions_params[:email])
    if user and user.authenticate(sessions_params[:password])
      login user
      redirect_to root_path
    end
  end

  def delete
    logout
    redirect_to root_path
  end

  private

  def sessions_params
    params.require(:session).permit(:email, :password, :password_confirmation)
  end

end
