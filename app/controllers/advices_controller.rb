class AdvicesController < ApplicationController
  def index
    @partial = 'advice'
    render :show
  end

  def show
    @partial = params[:id]
  end
end
