class BeesController < ApplicationController

  def index
    @bees = Bee.all

  end

  def show
    @bee = Bee.find(params[:id])
  end

  def edit
    @bee = Bee.find(params[:id])
  end

  def update
    @bee = Bee.find(params[:id])
    @bee.update
    redirect_to bees_path(@bee)
  end

end
