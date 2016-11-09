class UsersController < ApplicationController
include SessionsHelper


  def new #carga la vista
    #@user = User.new(first_name: "Jorgetas", last_name: "Gomez")
    #@user = User.new()
    #User.create
    #(nickname: "yonga",
    #email: "yonga@fusepong.com",
    #password: "password",
    #password_confirmation: "password")
  end

  def create
    @user = User.new(user_params)
    if @user.save
      login user
      redirect_to root_path
    end
  end

end
private
def user_params
  params.require(:user).permit(:nickname, :first_name, :last_name, :email, :password, :password_confirmation)
end
