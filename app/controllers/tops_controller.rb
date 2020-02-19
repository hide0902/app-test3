class TopsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @room = Room.find(params[:id])
    @station = @room.building.stations
    @image = @room.images
  end
end
