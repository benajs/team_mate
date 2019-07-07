require 'rails_helper'

RSpec.describe "skill_maps/show", type: :view do
  before(:each) do
    @skill_map = assign(:skill_map, SkillMap.create!(
      :skill => nil,
      :user => "",
      :range => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
