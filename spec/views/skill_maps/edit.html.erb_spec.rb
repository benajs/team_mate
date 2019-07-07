require 'rails_helper'

RSpec.describe "skill_maps/edit", type: :view do
  before(:each) do
    @skill_map = assign(:skill_map, SkillMap.create!(
      :skill => nil,
      :user => "",
      :range => 1
    ))
  end

  it "renders the edit skill_map form" do
    render

    assert_select "form[action=?][method=?]", skill_map_path(@skill_map), "post" do

      assert_select "input#skill_map_skill_id[name=?]", "skill_map[skill_id]"

      assert_select "input#skill_map_user[name=?]", "skill_map[user]"

      assert_select "input#skill_map_range[name=?]", "skill_map[range]"
    end
  end
end
