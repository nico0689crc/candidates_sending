module Api
  module V1
    class Admin::Api::V1::CandidatesController < ApiController
      before_action :set_candidate, only: %i[show edit update destroy]

      # GET api/v1/candidates
      def index
        @presenter = CandidatesPresenter.new(params)
        json_response(data: ActiveModel::Serializer::CollectionSerializer.new(@presenter.candidates, serializer: CandidateSerializer))
      end

      # GET api/v1/candidates/1
      def show
        @candidate = @candidate.decorate
        json_response(data: CandidateSerializer.new(@candidate))
      end

      # POST api/v1/candidates
      def create
        candidate_manager = CandidateManager.new(params: params)

        if candidate_manager.create
          candidate = candidate_manager.object.decorate
          json_response(message: I18n.t(:success, scope: %i[messages create]), data: CandidateSerializer.new(candidate), status: :created)
        else
          json_response(message: I18n.t(:error, scope: %i[messages create]), data: candidate_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # PATCH/PUT api/v1/candidates/1
      def update
        candidate_manager = CandidateManager.new(params: params, object: @candidate)

        if candidate_manager.update
          json_response(message: I18n.t(:success, scope: %i[messages update]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages update]), data: candidate_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # DELETE api/v1/candidates/1
      def destroy
        candidate_manager = CandidateManager.new(object: @candidate)

        if candidate_manager.destroy
          json_response(message: I18n.t(:success, scope: %i[messages destroy]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages destroy]), status: :unprocessable_entity)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_candidate
        @candidate = Candidate.find(params[:id])
      end
    end
  end
end
