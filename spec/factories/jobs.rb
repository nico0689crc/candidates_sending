FactoryBot.define do
  factory :job do
    title { "MyString" }
    description { "MyText" }
    status { 1 }
    ats_link { "MyString" }
    point_of_contact { nil }
  end
end
