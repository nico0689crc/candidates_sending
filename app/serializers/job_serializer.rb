class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status, :ats_link
  
  has_one :recruiter
  has_many :pipeline_steps
end
