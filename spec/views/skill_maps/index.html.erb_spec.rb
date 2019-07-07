require 'rails_helper'

RSpec.describe "skill_maps/index", type: :view do
  before(:each) do
    assign(:skill_maps, [
      SkillMap.create!(
        :skill => nil,
        :user => "",
        :range => 1
      ),
      SkillMap.create!(
        :skill => nil,
        :user => "",
        :range => 1
      )
    ])
  end

  it "renders a list of skill_maps" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
