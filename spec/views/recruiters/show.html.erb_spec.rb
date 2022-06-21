require 'rails_helper'

RSpec.describe "recruiters/show", type: :view do
  before(:each) do
    @recruiter = assign(:recruiter, Recruiter.create!(
      first_name: "First Name",
      last_name: "Last Name",
      profile_picture_url: "Profile Picture Url",
      status: false,
      role: "Role",
      company_name: "Company Name",
      contact_email: "Contact Email",
      contact_whatsapp: "Contact Whatsapp",
      contact_linked_in: "Contact Linked In"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Profile Picture Url/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Role/)
    expect(rendered).to match(/Company Name/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/Contact Whatsapp/)
    expect(rendered).to match(/Contact Linked In/)
  end
end
