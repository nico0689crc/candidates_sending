class JobsCandidateSerializer < ActiveModel::Serializer
  attributes :id, :status, :notifications, :token
  
  has_one :candidate

  class CandidateSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :contact_email
  end
end
