class JobsCandidateManager
  attr_reader :object

  def initialize(params: nil, object: nil)
    @params = params    if params.present?
    @object = object    if object.present?
  end

  def build
    JobsCandidate.new
  end

  def create
    @object = JobsCandidate.new({ **object_params, token: Faker::Internet.uuid })
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
    @params.require(:jobs_candidate).permit(permitted_params)
  end

  def permitted_params
    %i[
      job_id
      candidate_id
      status
      notifications
      token
    ]
  end
end
