class ProductsController < ApplicationController
  def index
    @partial = 'what_we_do'

    render :show
  end

  def show
    @partial = params[:id]
  end
end
