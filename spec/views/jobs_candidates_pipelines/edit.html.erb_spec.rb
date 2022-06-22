require 'rails_helper'

RSpec.describe "jobs_candidates_pipelines/edit", type: :view do
  before(:each) do
    @jobs_candidates_pipeline = assign(:jobs_candidates_pipeline, JobsCandidatesPipeline.create!(
      jobs_candidate: nil,
      pipeline_step: nil,
      completed: false,
      feedback: "MyText"
    ))
  end

  it "renders the edit jobs_candidates_pipeline form" do
    render

    assert_select "form[action=?][method=?]", jobs_candidates_pipeline_path(@jobs_candidates_pipeline), "post" do

      assert_select "input[name=?]", "jobs_candidates_pipeline[jobs_candidate_id]"

      assert_select "input[name=?]", "jobs_candidates_pipeline[pipeline_step_id]"

      assert_select "input[name=?]", "jobs_candidates_pipeline[completed]"

      assert_select "textarea[name=?]", "jobs_candidates_pipeline[feedback]"
    end
  end
end
