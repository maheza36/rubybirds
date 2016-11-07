class StaticPagesController < ApplicationController

  def index
    @chirps = Chirp.all
  end

end
