module Api
  module V1
    class Admin::Api::V1::RecruitersController < ApiController
      before_action :recruiter, only: %i[show edit update destroy]

      # GET api/v1/recruiters
      def index
        @presenter = RecruitersPresenter.new(params)
        json_response(data: ActiveModel::Serializer::CollectionSerializer.new(@presenter.recruiters, serializer: RecruiterSerializer))
      end

      # GET api/v1/recruiters/1
      def show
        @recruiter = @recruiter.decorate
        json_response(data: RecruiterSerializer.new(@recruiter))
      end

      # POST api/v1/recruiters
      def create
        recruiter_manager = RecruiterManager.new(params: params)

        if recruiter_manager.create
          recruiter = recruiter_manager.object.decorate
          json_response(message: I18n.t(:success, scope: %i[messages create]), data: RecruiterSerializer.new(recruiter), status: :created)
        else
          json_response(message: I18n.t(:error, scope: %i[messages create]), data: recruiter_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # PATCH/PUT api/v1/recruiters/1
      def update
        recruiter_manager = RecruiterManager.new(params: params, object: @recruiter)

        if recruiter_manager.update
          json_response(message: I18n.t(:success, scope: %i[messages update]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages update]), data: recruiter_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # DELETE api/v1/recruiters/1
      def destroy
        recruiter_manager = RecruiterManager.new(object: @recruiter)

        if recruiter_manager.destroy
          json_response(message: I18n.t(:success, scope: %i[messages destroy]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages destroy]), status: :unprocessable_entity)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def recruiter
        @recruiter = Recruiter.find(params[:id])
      end
    end
  end
end
