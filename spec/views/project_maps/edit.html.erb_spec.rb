require 'rails_helper'

RSpec.describe "project_maps/edit", type: :view do
  before(:each) do
    @project_map = assign(:project_map, ProjectMap.create!(
      :user => nil,
      :project => nil,
      :description => "MyText"
    ))
  end

  it "renders the edit project_map form" do
    render

    assert_select "form[action=?][method=?]", project_map_path(@project_map), "post" do

      assert_select "input#project_map_user_id[name=?]", "project_map[user_id]"

      assert_select "input#project_map_project_id[name=?]", "project_map[project_id]"

      assert_select "textarea#project_map_description[name=?]", "project_map[description]"
    end
  end
end
