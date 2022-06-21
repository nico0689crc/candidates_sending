module Api
  module V1
    class Admin::Api::V1::PipelineStepsController < ApiController
      before_action :set_pipeline_step, only: %i[show edit update destroy]

      # GET api/v1/pipeline_steps
      def index
        @presenter = PipelineStepsPresenter.new(params)
        json_response(data: ActiveModel::Serializer::CollectionSerializer.new(@presenter.pipeline_steps, serializer: PipelineStepSerializer))
      end

      # GET api/v1/pipeline_steps/1
      def show
        @pipeline_step = @pipeline_step.decorate
        json_response(data: PipelineStepSerializer.new(@pipeline_step))
      end

      # POST api/v1/pipeline_steps
      def create
        pipeline_step_manager = PipelineStepManager.new(params: params)

        if pipeline_step_manager.create
          pipeline_step = pipeline_step_manager.object.decorate
          json_response(message: I18n.t(:success, scope: %i[messages create]), data: PipelineStepSerializer.new(pipeline_step), status: :created)
        else
          json_response(message: I18n.t(:error, scope: %i[messages create]), data: PipelineStepSerializer.object.errors, status: :unprocessable_entity)
        end
      end

      # PATCH/PUT api/v1/pipeline_steps/1
      def update
        pipeline_step_manager = PipelineStepManager.new(params: params, object: @pipeline_step)

        if pipeline_step_manager.update
          json_response(message: I18n.t(:success, scope: %i[messages update]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages update]), data: pipeline_step_manager.object.errors, status: :unprocessable_entity)
        end
      end

      # DELETE api/v1/pipeline_steps/1
      def destroy
        pipeline_step_manager = PipelineStepManager.new(object: @pipeline_step)

        if pipeline_step_manager.destroy
          json_response(message: I18n.t(:success, scope: %i[messages destroy]), status: :ok)
        else
          json_response(message: I18n.t(:error, scope: %i[messages destroy]), status: :unprocessable_entity)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_pipeline_step
        @pipeline_step = pipeline_step.find(params[:id])
      end
    end
  end
end
