require 'rails_helper'

RSpec.describe "jobs_candidates/index", type: :view do
  before(:each) do
    assign(:jobs_candidates, [
      JobsCandidate.create!(
        job: nil,
        candidate: nil,
        status: 2,
        notifications: false
      ),
      JobsCandidate.create!(
        job: nil,
        candidate: nil,
        status: 2,
        notifications: false
      )
    ])
  end

  it "renders a list of jobs_candidates" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
  end
end
