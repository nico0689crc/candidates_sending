require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      title: "MyString",
      description: "MyText",
      status: 1,
      ats_link: "MyString",
      point_of_contact: nil
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input[name=?]", "job[title]"

      assert_select "textarea[name=?]", "job[description]"

      assert_select "input[name=?]", "job[status]"

      assert_select "input[name=?]", "job[ats_link]"

      assert_select "input[name=?]", "job[point_of_contact_id]"
    end
  end
end
