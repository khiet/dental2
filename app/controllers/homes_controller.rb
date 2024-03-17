class HomesController < ApplicationController
  def show
    @contact = Contact.new
    @partial = params[:id] || 'welcome'
  end
end
