class CandidateFilter
  include ActiveModel::Model

  attr_accessor :query

  def call(current_entity)
    candidates = Candidate.all
    candidates = search(candidates)
    candidates
  end

  private

  def search(candidates)
    candidates = candidates.where('
      candidates.last_name LIKE :q', q: "%#{@query}%") if @query.present?
      candidates
  end
end
