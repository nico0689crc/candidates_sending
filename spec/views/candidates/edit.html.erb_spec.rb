require 'rails_helper'

RSpec.describe "candidates/edit", type: :view do
  before(:each) do
    @candidate = assign(:candidate, Candidate.create!(
      first_name: "MyString",
      last_name: "MyString",
      contact_email: "MyString",
      contact_linked_in: "MyString"
    ))
  end

  it "renders the edit candidate form" do
    render

    assert_select "form[action=?][method=?]", candidate_path(@candidate), "post" do

      assert_select "input[name=?]", "candidate[first_name]"

      assert_select "input[name=?]", "candidate[last_name]"

      assert_select "input[name=?]", "candidate[contact_email]"

      assert_select "input[name=?]", "candidate[contact_linked_in]"
    end
  end
end
