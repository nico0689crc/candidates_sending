class JobsCandidateStepManager
  attr_reader :object

  def initialize(params: nil, object: nil)
    @params = params    if params.present?
    @object = object    if object.present?
  end

  def build
    JobsCandidateStep.new
  end

  def create
    @object = JobsCandidateStep.new(object_params)
    @object.save
  end

  def update
    @object.update({ **object_params, completed: true } )
  end

  def destroy
    @object.destroy
  end

  private

  def object_params
    @params.require(:jobs_candidates_pipeline).permit(permitted_params)
  end

  def permitted_params
    %i[
      jobs_candidate_id
      pipeline_step_id
      feedback
      completed
    ]
  end
end
