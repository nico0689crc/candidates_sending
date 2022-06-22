module Api
  module V1
    class Admin::Api::V1::JobsCandidatesPipelinesController < ApiController
      before_action :set_jobs_candidates_pipeline, only: %i[update]

      # PATCH/PUT api/v1/jobs_candidates_pipelines/1
      def update
        jobs_candidates_pipeline_manager = JobsCandidatesPipelineManager.new(params: params, object: @jobs_candidates_pipeline)

        if jobs_candidates_pipeline_manager.update
          json_response(message: I18n.t(:success, scope: %i[messages update]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages update]), data: jobs_candidates_pipeline_manager.object.errors, status: :unprocessable_entity)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_jobs_candidates_pipeline
        @jobs_candidates_pipeline = jobs_candidates_pipeline.find(params[:id])
      end
    end
  end
end
