class PipelineStepManager
  attr_reader :object

  def initialize(params: nil, object: nil)
    @params = params    if params.present?
    @object = object    if object.present?
  end

  def build
    PipelineStep.new
  end

  def create
    pipeline_steps_count = PipelineStep.where(job_id: @params[:job_id]).count
    @object = PipelineStep.new({ **object_params, order: pipeline_steps_count + 1 })
    @object.save
  end

  def update
    @object.update(object_params)
  end

  def destroy
    @object.destroy
  end

  private

  def object_params
    @params.require(:pipeline_step).permit(permitted_params)
  end

  def permitted_params
    %i[
      name
      description
      teaser
      action_button_label
      action_button_url
      order
      job_id
    ]
  end
end
