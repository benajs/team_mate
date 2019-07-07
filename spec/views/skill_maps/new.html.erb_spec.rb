require 'rails_helper'

RSpec.describe "skill_maps/new", type: :view do
  before(:each) do
    assign(:skill_map, SkillMap.new(
      :skill => nil,
      :user => "",
      :range => 1
    ))
  end

  it "renders new skill_map form" do
    render

    assert_select "form[action=?][method=?]", skill_maps_path, "post" do

      assert_select "input#skill_map_skill_id[name=?]", "skill_map[skill_id]"

      assert_select "input#skill_map_user[name=?]", "skill_map[user]"

      assert_select "input#skill_map_range[name=?]", "skill_map[range]"
    end
  end
end
