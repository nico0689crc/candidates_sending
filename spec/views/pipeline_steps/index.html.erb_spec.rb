require 'rails_helper'

RSpec.describe "pipeline_steps/index", type: :view do
  before(:each) do
    assign(:pipeline_steps, [
      PipelineStep.create!(
        name: "Name",
        description: "MyText",
        teaser: "MyText",
        action_button_label: "Action Button Label",
        action_button_url: "Action Button Url",
        order: 2,
        job: nil
      ),
      PipelineStep.create!(
        name: "Name",
        description: "MyText",
        teaser: "MyText",
        action_button_label: "Action Button Label",
        action_button_url: "Action Button Url",
        order: 2,
        job: nil
      )
    ])
  end

  it "renders a list of pipeline_steps" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Action Button Label".to_s, count: 2
    assert_select "tr>td", text: "Action Button Url".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
