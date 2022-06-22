require 'rails_helper'

RSpec.describe "jobs_candidates/show", type: :view do
  before(:each) do
    @jobs_candidate = assign(:jobs_candidate, JobsCandidate.create!(
      job: nil,
      candidate: nil,
      status: 2,
      notifications: false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
