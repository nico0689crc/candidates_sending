require 'rails_helper'

RSpec.describe "candidates/new", type: :view do
  before(:each) do
    assign(:candidate, Candidate.new(
      first_name: "MyString",
      last_name: "MyString",
      contact_email: "MyString",
      contact_linked_in: "MyString"
    ))
  end

  it "renders new candidate form" do
    render

    assert_select "form[action=?][method=?]", candidates_path, "post" do

      assert_select "input[name=?]", "candidate[first_name]"

      assert_select "input[name=?]", "candidate[last_name]"

      assert_select "input[name=?]", "candidate[contact_email]"

      assert_select "input[name=?]", "candidate[contact_linked_in]"
    end
  end
end
