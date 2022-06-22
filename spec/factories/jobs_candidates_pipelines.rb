FactoryBot.define do
  factory :jobs_candidates_pipeline do
    jobs_candidate { nil }
    pipeline_step { nil }
    completed { false }
    feedback { "MyText" }
  end
end
