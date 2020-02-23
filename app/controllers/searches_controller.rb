class SearchesController < ApplicationController
  def index
    @search = Building.includes(:rooms, :stations).ransack(params[:q])
    @buildings = @search.result(distinct: true)
    @rooms = @buildings
  end

  def show
    @room = Room.find(params[:id])
    @station = @room.building.stations
    @image = @room.images
  end
end
