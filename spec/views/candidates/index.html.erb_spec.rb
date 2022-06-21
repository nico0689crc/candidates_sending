require 'rails_helper'

RSpec.describe "candidates/index", type: :view do
  before(:each) do
    assign(:candidates, [
      Candidate.create!(
        first_name: "First Name",
        last_name: "Last Name",
        contact_email: "Contact Email",
        contact_linked_in: "Contact Linked In"
      ),
      Candidate.create!(
        first_name: "First Name",
        last_name: "Last Name",
        contact_email: "Contact Email",
        contact_linked_in: "Contact Linked In"
      )
    ])
  end

  it "renders a list of candidates" do
    render
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Contact Email".to_s, count: 2
    assert_select "tr>td", text: "Contact Linked In".to_s, count: 2
  end
end
