class JobsCandidateSerializer < ActiveModel::Serializer
  attributes :id, :status, :notifications, :token
  
  has_one :candidate
  has_one :job
  has_many :jobs_candidates_pipeline, serializer: JobsCandidatesPipelineSerializer, key: :pipelines_steps

  class CandidateSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :contact_email
  end
end
