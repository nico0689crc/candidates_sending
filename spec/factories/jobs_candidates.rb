FactoryBot.define do
  factory :jobs_candidate do
    job { nil }
    candidate { nil }
    status { 1 }
    notifications { false }
  end
end
