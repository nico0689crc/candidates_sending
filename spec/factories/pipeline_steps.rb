FactoryBot.define do
  factory :pipeline_step do
    name { "MyString" }
    description { "MyText" }
    teaser { "MyText" }
    action_button_label { "MyString" }
    action_button_url { "MyString" }
    order { 1 }
    job { nil }
  end
end
