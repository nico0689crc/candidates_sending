class JobsCandidateFilter
  include ActiveModel::Model

  attr_accessor :query

  def call(current_entity)
    jobs_candidates = JobsCandidate.all
    jobs_candidates = search(jobs_candidates)
    jobs_candidates
  end

  private

  def search(jobs_candidates)
    jobs_candidates = jobs_candidates.where('
      jobs_candidates.token LIKE :q', q: "%#{@query}%") if @query.present?
      jobs_candidates
  end
end
