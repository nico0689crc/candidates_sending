module Api
  module V1
    class Admin::Api::V1::JobsController < ApiController
      before_action :set_job, only: %i[show edit update destroy]

      # GET api/v1/jobs
      def index
        @presenter = JobsPresenter.new(params)
        json_response(data: ActiveModel::Serializer::CollectionSerializer.new(@presenter.jobs, serializer: JobSerializer))
      end

      # GET api/v1/jobs/1
      def show
        @job = @job.decorate
        json_response(data: JobSerializer.new(@job))
      end

      # POST api/v1/jobs
      def create
        job_manager = JobManager.new(params: params)

        if job_manager.create
          job = job_manager.object.decorate
          json_response(message: I18n.t(:success, scope: %i[messages create]), data: JobSerializer.new(job), status: :created)
        else
          json_response(message: I18n.t(:error, scope: %i[messages create]), data: job_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # PATCH/PUT api/v1/jobs/1
      def update
        job_manager = JobManager.new(params: params, object: @job)

        if job_manager.update
          json_response(message: I18n.t(:success, scope: %i[messages update]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages update]), data: job_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # DELETE api/v1/jobs/1
      def destroy
        job_manager = JobManager.new(object: @job)

        if job_manager.destroy
          json_response(message: I18n.t(:success, scope: %i[messages destroy]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages destroy]), status: :unprocessable_entity)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_job
        @job = Job.find(params[:id])
      end
    end
  end
end
