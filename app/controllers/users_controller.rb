class UsersController < ApplicationController
include SessionsHelper


  def new
    #@user = User.new(first_name: "Jorgetas", last_name: "Gomez")
    #@user = User.new()
    #User.create
    #(nickname: "yonga",
    #email: "yonga@fusepong.com",
    #password: "password",
    #password_confirmation: "password")
  end

  def create
    @user = User.new(sessions_params)
    if @user.save
      redirect_to root_path
    end
  end

end
private
def sessions_params
  params.require(:user).permit(:nickname, :first_name, :last_name, :email, :password, :password_confirmation)
end
