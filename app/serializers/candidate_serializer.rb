class CandidateSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :contact_email, :contact_linked_in
end
