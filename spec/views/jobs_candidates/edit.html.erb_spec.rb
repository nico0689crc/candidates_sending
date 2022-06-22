require 'rails_helper'

RSpec.describe "jobs_candidates/edit", type: :view do
  before(:each) do
    @jobs_candidate = assign(:jobs_candidate, JobsCandidate.create!(
      job: nil,
      candidate: nil,
      status: 1,
      notifications: false
    ))
  end

  it "renders the edit jobs_candidate form" do
    render

    assert_select "form[action=?][method=?]", jobs_candidate_path(@jobs_candidate), "post" do

      assert_select "input[name=?]", "jobs_candidate[job_id]"

      assert_select "input[name=?]", "jobs_candidate[candidate_id]"

      assert_select "input[name=?]", "jobs_candidate[status]"

      assert_select "input[name=?]", "jobs_candidate[notifications]"
    end
  end
end
