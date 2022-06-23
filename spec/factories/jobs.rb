FactoryBot.define do
  factory :job do
    title { "MyString" }
    description { "MyText" }
    status { 1 }
    ats_link { "MyString" }
    recruiter_id { nil }
  end
end
