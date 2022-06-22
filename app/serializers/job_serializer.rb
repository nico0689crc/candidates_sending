class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status, :ats_link
  
  has_one :recruiter
  has_many :pipeline_steps
  has_many :jobs_candidates, serializer: JobsCandidateSerializer, key: :candidates
end
