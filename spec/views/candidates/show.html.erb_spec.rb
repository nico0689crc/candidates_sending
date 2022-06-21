require 'rails_helper'

RSpec.describe "candidates/show", type: :view do
  before(:each) do
    @candidate = assign(:candidate, Candidate.create!(
      first_name: "First Name",
      last_name: "Last Name",
      contact_email: "Contact Email",
      contact_linked_in: "Contact Linked In"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Contact Email/)
    expect(rendered).to match(/Contact Linked In/)
  end
end
