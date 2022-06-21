require 'rails_helper'

RSpec.describe "recruiters/new", type: :view do
  before(:each) do
    assign(:recruiter, Recruiter.new(
      first_name: "MyString",
      last_name: "MyString",
      profile_picture_url: "MyString",
      status: false,
      role: "MyString",
      company_name: "MyString",
      contact_email: "MyString",
      contact_whatsapp: "MyString",
      contact_linked_in: "MyString"
    ))
  end

  it "renders new recruiter form" do
    render

    assert_select "form[action=?][method=?]", recruiters_path, "post" do

      assert_select "input[name=?]", "recruiter[first_name]"

      assert_select "input[name=?]", "recruiter[last_name]"

      assert_select "input[name=?]", "recruiter[profile_picture_url]"

      assert_select "input[name=?]", "recruiter[status]"

      assert_select "input[name=?]", "recruiter[role]"

      assert_select "input[name=?]", "recruiter[company_name]"

      assert_select "input[name=?]", "recruiter[contact_email]"

      assert_select "input[name=?]", "recruiter[contact_whatsapp]"

      assert_select "input[name=?]", "recruiter[contact_linked_in]"
    end
  end
end
