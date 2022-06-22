require 'rails_helper'

RSpec.describe "jobs_candidates_pipelines/index", type: :view do
  before(:each) do
    assign(:jobs_candidates_pipelines, [
      JobsCandidatesPipeline.create!(
        jobs_candidate: nil,
        pipeline_step: nil,
        completed: false,
        feedback: "MyText"
      ),
      JobsCandidatesPipeline.create!(
        jobs_candidate: nil,
        pipeline_step: nil,
        completed: false,
        feedback: "MyText"
      )
    ])
  end

  it "renders a list of jobs_candidates_pipelines" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
