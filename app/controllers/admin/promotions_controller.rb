module Admin
  class PromotionsController < ApplicationController
    # GET /promotions
    def index
      @promotions = Promotion.all
    end

    # GET /promotions/1
    def show
      @promotion = Promotion.find(params[:id])
    end

    # GET /promotions/new
    def new
      @promotion = Promotion.new
    end

    # GET /promotions/1/edit
    def edit
      @promotion = Promotion.find(params[:id])
    end

    # POST /promotions
    def create
      @promotion = Promotion.new(params[:promotion])

      if @promotion.save
        redirect_to admin_promotion_path(@promotion), notice: 'Promotion was successfully created.'
      else
        render action: "new"
      end
    end

    # PUT /promotions/1
    def update
      @promotion = Promotion.find(params[:id])

      if @promotion.update_attributes(params[:promotion])
        redirect_to admin_promotion_path(@promotion), notice: 'Promotion was successfully updated.'
      else
        render action: "edit"
      end
    end

    # DELETE /promotions/1
    def destroy
      @promotion = Promotion.find(params[:id])
      @promotion.destroy

      redirect_to admin_promotions_url
    end
  end
end
