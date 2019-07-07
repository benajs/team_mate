require 'rails_helper'

RSpec.describe "project_maps/show", type: :view do
  before(:each) do
    @project_map = assign(:project_map, ProjectMap.create!(
      :user => nil,
      :project => nil,
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
  end
end
