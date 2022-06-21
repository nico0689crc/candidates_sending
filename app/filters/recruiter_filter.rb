class RecruiterFilter
  include ActiveModel::Model

  attr_accessor :query

  def call(current_entity)
    recruiters = Recruiter.all
    recruiters = search(recruiters)
    recruiters
  end

  private

  def search(recruiters)
    recruiters = recruiters.where('
      recruiters.last_name LIKE :q', q: "%#{@query}%") if @query.present?
      recruiters
  end
end
