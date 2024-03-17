class LegalsController < ApplicationController
  def show
    @partial = params[:id]
  end
end
