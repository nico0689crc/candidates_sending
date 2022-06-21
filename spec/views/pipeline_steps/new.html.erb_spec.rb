require 'rails_helper'

RSpec.describe "pipeline_steps/new", type: :view do
  before(:each) do
    assign(:pipeline_step, PipelineStep.new(
      name: "MyString",
      description: "MyText",
      teaser: "MyText",
      action_button_label: "MyString",
      action_button_url: "MyString",
      order: 1,
      job: nil
    ))
  end

  it "renders new pipeline_step form" do
    render

    assert_select "form[action=?][method=?]", pipeline_steps_path, "post" do

      assert_select "input[name=?]", "pipeline_step[name]"

      assert_select "textarea[name=?]", "pipeline_step[description]"

      assert_select "textarea[name=?]", "pipeline_step[teaser]"

      assert_select "input[name=?]", "pipeline_step[action_button_label]"

      assert_select "input[name=?]", "pipeline_step[action_button_url]"

      assert_select "input[name=?]", "pipeline_step[order]"

      assert_select "input[name=?]", "pipeline_step[job_id]"
    end
  end
end
