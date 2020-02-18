class TopsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @room = Room.find(params[:id])
    # @station = @room.stations
  end
end
