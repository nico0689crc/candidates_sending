require 'rails_helper'

RSpec.describe "jobs/edit", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      title: "MyString",
      description: "MyText",
      status: 1,
      ats_link: "MyString",
      point_of_contact: nil
    ))
  end

  it "renders the edit job form" do
    render

    assert_select "form[action=?][method=?]", job_path(@job), "post" do

      assert_select "input[name=?]", "job[title]"

      assert_select "textarea[name=?]", "job[description]"

      assert_select "input[name=?]", "job[status]"

      assert_select "input[name=?]", "job[ats_link]"

      assert_select "input[name=?]", "job[point_of_contact_id]"
    end
  end
end
