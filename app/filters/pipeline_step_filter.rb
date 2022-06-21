class PipelineStepFilter
  include ActiveModel::Model

  attr_accessor :query

  def call(current_entity)
    pipeline_steps = PipelineStep.all
    pipeline_steps = search(pipeline_steps)
    pipeline_steps
  end

  private

  def search(pipeline_steps)
    pipeline_steps = pipeline_steps.where('
      pipeline_steps.name LIKE :q', q: "%#{@query}%") if @query.present?
      pipeline_steps
  end
end
