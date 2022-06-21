require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      title: "Title",
      description: "MyText",
      status: 2,
      ats_link: "Ats Link",
      point_of_contact: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Ats Link/)
    expect(rendered).to match(//)
  end
end
