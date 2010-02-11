class StagesController < ApplicationController
  def index
    scheduled
  end
  
  def past
    @stages = Stage.past(Date.today)
    render :index
  end

  def scheduled
    @stages = Stage.scheduled(Date.today)
    render :index
  end

  def show
    @stage = Stage.find(params[:id])
  end
end
