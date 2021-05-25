class IslandsController < ApplicationController
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
  end

  def new
    @island = Island.new
  end

  def create
    island = Island.new(island_params)
    island.save
    redirect_to island_path(island)
  end
end

  private

  def island_params
    params.require(:island).permit(:name, :address, :description, :daily_rate)
  end
