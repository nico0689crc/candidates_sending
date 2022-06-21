require 'rails_helper'

RSpec.describe "pipeline_steps/show", type: :view do
  before(:each) do
    @pipeline_step = assign(:pipeline_step, PipelineStep.create!(
      name: "Name",
      description: "MyText",
      teaser: "MyText",
      action_button_label: "Action Button Label",
      action_button_url: "Action Button Url",
      order: 2,
      job: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Action Button Label/)
    expect(rendered).to match(/Action Button Url/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
