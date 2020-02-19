class SearchesController < ApplicationController
  def index
    @search = Building.ransack(params[:q])
    @buildings = @search.result(distinct: true)
  end

  def show
    @room = Room.find(params[:id])
    @station = @room.building.stations
    @image = @room.images
  end
end
