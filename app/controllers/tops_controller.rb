class TopsController < ApplicationController
  def index
    @search = Building.ransack(params[:q])
  end
end
