module Admin
  class JobsCandidatesPipelinesController < ApplicationController
    before_action :set_jobs_candidates_pipeline, only: %i[ update ]

    # PATCH/PUT /jobs_candidates_pipelines/1
    def update
      jobs_candidates_pipeline_manager = JobsCandidatesPipelineManager.new(params: params, object: @jobs_candidates_pipeline)

      if jobs_candidates_pipeline_manager.update
        redirect_to admin_jobs_candidates_pipelines_url, notice: "Step was successfully updated."
      else
        @jobs_candidates_pipeline = jobs_candidates_pipeline_manager.object
        flash.now[:error] = "Step could not update."
        render :edit, status: :unprocessable_entity
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_jobs_candidates_pipeline
        @jobs_candidates_pipeline = JobsCandidatesPipeline.find(params[:id])
      end
  end
end
