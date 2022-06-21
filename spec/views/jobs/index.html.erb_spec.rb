require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        title: "Title",
        description: "MyText",
        status: 2,
        ats_link: "Ats Link",
        point_of_contact: nil
      ),
      Job.create!(
        title: "Title",
        description: "MyText",
        status: 2,
        ats_link: "Ats Link",
        point_of_contact: nil
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Ats Link".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
