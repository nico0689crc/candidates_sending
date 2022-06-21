class CandidateManager
  attr_reader :object

  def initialize(params: nil, object: nil)
    @params = params    if params.present?
    @object = object    if object.present?
  end

  def build
    Candidate.new
  end

  def create
    @object = Candidate.new(object_params)
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
    @params.require(:candidate).permit(permitted_params)
  end

  def permitted_params
    %i[
      first_name
      last_name
      contact_email
      contact_linked_in
    ]
  end
end
