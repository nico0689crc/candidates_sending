require 'rails_helper'

RSpec.describe "recruiters/index", type: :view do
  before(:each) do
    assign(:recruiters, [
      Recruiter.create!(
        first_name: "First Name",
        last_name: "Last Name",
        profile_picture_url: "Profile Picture Url",
        status: false,
        role: "Role",
        company_name: "Company Name",
        contact_email: "Contact Email",
        contact_whatsapp: "Contact Whatsapp",
        contact_linked_in: "Contact Linked In"
      ),
      Recruiter.create!(
        first_name: "First Name",
        last_name: "Last Name",
        profile_picture_url: "Profile Picture Url",
        status: false,
        role: "Role",
        company_name: "Company Name",
        contact_email: "Contact Email",
        contact_whatsapp: "Contact Whatsapp",
        contact_linked_in: "Contact Linked In"
      )
    ])
  end

  it "renders a list of recruiters" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Profile Picture Url".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Role".to_s, count: 2
    assert_select "tr>td", text: "Company Name".to_s, count: 2
    assert_select "tr>td", text: "Contact Email".to_s, count: 2
    assert_select "tr>td", text: "Contact Whatsapp".to_s, count: 2
    assert_select "tr>td", text: "Contact Linked In".to_s, count: 2
  end
end
