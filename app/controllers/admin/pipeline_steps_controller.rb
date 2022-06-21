module Admin
  class PipelineStepsController < ApplicationController
    before_action :set_pipeline_step, only: %i[ show edit update destroy ]

    # GET /pipeline_steps
    def index
      @presenter = PipelineStepsPresenter.new(params)
    end

    # GET /pipeline_steps/1
    def show
      @pipeline_step = @pipeline_step.decorate
    end

    # GET /pipeline_steps/new
    def new
      pipeline_step_manager = PipelineStepManager.new(params: params)
      @pipeline_step = pipeline_step_manager.build
    end

    # GET /pipeline_steps/1/edit
    def edit
    end

    # POST /pipeline_steps
    def create
      pipeline_step_manager = PipelineStepManager.new(params: params)

      if pipeline_step_manager.create
        redirect_to admin_pipeline_steps_url, notice: "Step was successfully created."
      else
        @pipeline_step = pipeline_step_manager.object
        flash.now[:error] = "Step could not create."
        render :new, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /pipeline_steps/1
    def update
      pipeline_step_manager = PipelineStepManager.new(params: params, object: @pipeline_step)

      if pipeline_step_manager.update
        redirect_to admin_pipeline_steps_url, notice: "Step was successfully updated."
      else
        @pipeline_step = pipeline_step_manager.object
        flash.now[:error] = "Step could not update."
        render :edit, status: :unprocessable_entity
      end
    end

    # DELETE /pipeline_steps/1
    def destroy
      pipeline_step_manager = PipelineStepManager.new(object: @pipeline_step)

      if pipeline_step_manager.destroy
        flash[:notice] = "Step was successfully destroyed."
        redirect_to admin_pipeline_steps_url
      else
        flash[:error] = "Step could not destroy."
        redirect_to admin_pipeline_steps_url
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_pipeline_step
        @pipeline_step = PipelineStep.find(params[:id])
      end
  end
end
