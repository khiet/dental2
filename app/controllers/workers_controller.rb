class WorkersController < ApplicationController
  def index
  end

  def show
    @workers = Worker.includes(:title, :job).send(params[:id])

    render :show
  end
end
