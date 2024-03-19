module Admin
  class WorkersController < ApplicationController
    # GET /workers
    def index
      @workers = Worker.all
    end

    # GET /workers/1
    def show
      @worker = Worker.find(params[:id])
    end

    # GET /workers/new
    def new
      @worker = Worker.new
    end

    # GET /workers/1/edit
    def edit
      @worker = Worker.find(params[:id])
    end

    # POST /workers
    def create
      @worker = Worker.new(worker_params)

      if @worker.save
        redirect_to admin_worker_path(@worker), notice: 'Worker was successfully created.'
      else
        render action: 'new'
      end
    end

    # PUT /workers/1
    def update
      @worker = Worker.find(params[:id])

      if @worker.update(worker_params)
        redirect_to admin_worker_path(@worker), notice: 'Worker was successfully updated.'
      else
        render action: 'edit'
      end
    end

    # DELETE /workers/1
    def destroy
      @worker = Worker.find(params[:id])
      @worker.destroy

      redirect_to admin_workers_url
    end

    private

    def worker_params
      params.require(:worker).permit!
    end
  end
end
