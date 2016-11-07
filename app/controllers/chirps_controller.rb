class ChirpsController < ApplicationController
  include SessionsHelper

  def new

  end

  def create
    @chirp = Chirp.new(sessions_params)
    if @chirp.save
      redirect_to root_path
    end
  end

  private
  def sessions_params
    params.require(:chirp).permit(:body, :user_id)
  end

end
