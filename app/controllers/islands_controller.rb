class IslandsController < ApplicationController
  before_action :set_island, only: [:show]
  before_action :set_user, only: [:create]

  def index
    @islands = Island.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @island = Island.new
  end

  def create
    @island = Island.new(island_params)
    @island.user_id = @user.id
    if @island.save
      redirect_to island_path(@island)
    else
      render :new
    end
  end

  def edit
  end

  def update
    redirect_to island_path(@island)
  end

  def destroy
    @island.destroy
    redirect_to island_path
  end

private

  def island_params
    params.require(:island).permit(:name, :address, :description, :daily_rate, :availability)
  end

  def set_island
    @island = Island.find(params[:id])
  end

  def set_user
    @user = current_user
  end
end
