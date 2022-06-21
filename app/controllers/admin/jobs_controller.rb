module Admin 
  class JobsController < ApplicationController
    before_action :set_job, only: %i[ show edit update destroy ]

    # GET /jobs
    def index
      @presenter = JobsPresenter.new(params)
    end

    # GET /jobs/1
    def show
      @job = @job.decorate
    end

    # GET /jobs/new
    def new
      job_manager = JobManager.new(params: params)
      @job = job_manager.build
    end

    # GET /jobs/1/edit
    def edit
    end

    # POST /jobs
    def create
      job_manager = JobManager.new(params: params)

      if job_manager.create
        redirect_to admin_jobs_url, notice: "Job was successfully created."
      else
        @job = job_manager.object
        flash.now[:error] = "Job could not create."
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /jobs/1
    def update
      job_manager = JobManager.new(params: params, object: @job)

      if job_manager.update
        redirect_to admin_jobs_url, notice: "Job was successfully updated."
      else
        @job = job_manager.object
        flash.now[:error] = "Job could not update."
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /jobs/1
    def destroy
      job_manager = JobManager.new(object: @job)

      if job_manager.destroy
        flash[:notice] = "Job was successfully destroyed."
        redirect_to admin_jobs_url
      else
        flash[:error] = "Job could not destroy."
        redirect_to admin_jobs_url
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_job
        @job = Job.find(params[:id])
      end
  end
end
