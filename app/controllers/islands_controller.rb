class IslandsController < ApplicationController
  def index
    @islands = Island.all
  end

  def show
    @island = Island.find(params[:id])
  end

  def edit

  end

  def update
    @island.update(params[:island])
    redirect_to_island_path(@island)
  end


private

  def islands_params
    params.require(:island).permit(:name, :address, :description, :daily_rate, :availability, :user_id)
  end

  def set_island
  @island = Island.find(params[:id])
  end
end
