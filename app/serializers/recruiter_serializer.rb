class RecruiterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :profile_picture_url, :status, :role, :company_name, :contact_email, :contact_whatsapp, :contact_linked_in
end
