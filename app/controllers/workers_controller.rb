class WorkersController < ApplicationController
  def index
    @partial = 'about_us'
    render :show
  end

  def show
    @workers = Worker.includes(:title, :job).order(:weight).send(params[:id])

    @partial = 'workers'
  end
end
