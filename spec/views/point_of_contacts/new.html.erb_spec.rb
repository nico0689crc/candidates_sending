require 'rails_helper'

RSpec.describe "point_of_contacts/new", type: :view do
  before(:each) do
    assign(:point_of_contact, PointOfContact.new(
      first_name: "MyString",
      last_name: "MyString",
      contact_email: "MyString",
      profile_picture_url: "MyString",
      status: false,
      role: "MyString",
      company_name: "MyString",
      contact_whatsapp: "MyString",
      contact_linked_in: "MyString"
    ))
  end

  it "renders new point_of_contact form" do
    render

    assert_select "form[action=?][method=?]", point_of_contacts_path, "post" do

      assert_select "input[name=?]", "point_of_contact[first_name]"

      assert_select "input[name=?]", "point_of_contact[last_name]"

      assert_select "input[name=?]", "point_of_contact[contact_email]"

      assert_select "input[name=?]", "point_of_contact[profile_picture_url]"

      assert_select "input[name=?]", "point_of_contact[status]"

      assert_select "input[name=?]", "point_of_contact[role]"

      assert_select "input[name=?]", "point_of_contact[company_name]"

      assert_select "input[name=?]", "point_of_contact[contact_whatsapp]"

      assert_select "input[name=?]", "point_of_contact[contact_linked_in]"
    end
  end
end