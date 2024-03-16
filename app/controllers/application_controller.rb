class ApplicationController < ActionController::Base
  before_action :set_promotions

  private

  def set_promotions
    @promotions = Promotion.active
  end
end
