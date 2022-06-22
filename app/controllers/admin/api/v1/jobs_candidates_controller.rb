module Api
  module V1
    class Admin::Api::V1::JobsCandidatesController < ApiController
      before_action :set_jobs_candidate, only: %i[show edit update destroy]

      # GET api/v1/jobs_candidates
      def index
        @presenter = JobsCandidatesPresenter.new(params)
        json_response(data: ActiveModel::Serializer::CollectionSerializer.new(@presenter.jobs_candidates, serializer: JobsCandidateSerializer))
      end

      # GET api/v1/jobs_candidates/1
      def show
        @jobs_candidate = @jobs_candidate.decorate
        json_response(data: JobsCandidateSerializer.new(@jobs_candidate))
      end

      # POST api/v1/jobs_candidates
      def create
        jobs_candidate_manager = JobsCandidateManager.new(params: params)

        if jobs_candidate_manager.create
          jobs_candidate = jobs_candidate_manager.object.decorate
          json_response(message: I18n.t(:success, scope: %i[messages create]), data: JobsCandidateSerializer.new(jobs_candidate), status: :created)
        else
          json_response(message: I18n.t(:error, scope: %i[messages create]), data: JobsCandidateSerializer.object.errors, status: :unprocessable_entity)
        end
      end

      # PATCH/PUT api/v1/jobs_candidates/1
      def update
        jobs_candidate_manager = JobsCandidateManager.new(params: params, object: @jobs_candidate)

        if jobs_candidate_manager.update
          json_response(message: I18n.t(:success, scope: %i[messages update]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages update]), data: jobs_candidate_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # DELETE api/v1/jobs_candidates/1
      def destroy
        jobs_candidate_manager = JobsCandidateManager.new(object: @jobs_candidate)

        if jobs_candidate_manager.destroy
          json_response(message: I18n.t(:success, scope: %i[messages destroy]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages destroy]), status: :unprocessable_entity)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_jobs_candidate
        @jobs_candidate = jobs_candidate.find(params[:id])
      end
    end
  end
end
