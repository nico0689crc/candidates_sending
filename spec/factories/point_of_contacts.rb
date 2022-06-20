FactoryBot.define do
  factory :point_of_contact do
    first_name { "MyString" }
    last_name { "MyString" }
    contact_email { "MyString" }
    profile_picture_url { "MyString" }
    status { false }
    role { "MyString" }
    company_name { "MyString" }
    contact_whatsapp { "MyString" }
    contact_linked_in { "MyString" }
  end
end
