FactoryBot.define do
  factory :recruiter do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    profile_picture_url { Faker::Avatar.image }
    status { false }
    role { Faker::Job.position }
    company_name { "ITCROWDARG" }
    contact_email { Faker::Internet.email }
    contact_whatsapp { Faker::Internet.url }
    contact_linked_in { Faker::PhoneNumber.cell_phone_in_e164 }
  end
end
