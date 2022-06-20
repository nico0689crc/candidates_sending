class PointOfContactSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :contact_email, :profile_picture_url, :status, :role, :company_name, :contact_whatsapp, :contact_linked_in
end
