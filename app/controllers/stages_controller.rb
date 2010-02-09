class StagesController < ApplicationController
  def index
    @stage = Stage.order('start_time DESC')
  end
  
  def past
    index
    render :index
  end

  def scheduled
    index
    render :index
  end

end
