require 'rails_helper'

RSpec.describe "jobs_candidates_pipelines/show", type: :view do
  before(:each) do
    @jobs_candidates_pipeline = assign(:jobs_candidates_pipeline, JobsCandidatesPipeline.create!(
      jobs_candidate: nil,
      pipeline_step: nil,
      completed: false,
      feedback: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end
