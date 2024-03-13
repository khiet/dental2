class HomesController < ApplicationController
  def index
    @contact = Contact.new
  end

  def show
    render params[:id]
  end
end
