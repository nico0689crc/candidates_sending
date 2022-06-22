require 'rails_helper'

RSpec.describe "jobs_candidates/new", type: :view do
  before(:each) do
    assign(:jobs_candidate, JobsCandidate.new(
      job: nil,
      candidate: nil,
      status: 1,
      notifications: false
    ))
  end

  it "renders new jobs_candidate form" do
    render

    assert_select "form[action=?][method=?]", jobs_candidates_path, "post" do

      assert_select "input[name=?]", "jobs_candidate[job_id]"

      assert_select "input[name=?]", "jobs_candidate[candidate_id]"

      assert_select "input[name=?]", "jobs_candidate[status]"

      assert_select "input[name=?]", "jobs_candidate[notifications]"
    end
  end
end
