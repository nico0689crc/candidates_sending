class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :status, :ats_link
  has_one :point_of_contact
end
