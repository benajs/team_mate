require 'rails_helper'

RSpec.describe "project_maps/new", type: :view do
  before(:each) do
    assign(:project_map, ProjectMap.new(
      :user => nil,
      :project => nil,
      :description => "MyText"
    ))
  end

  it "renders new project_map form" do
    render

    assert_select "form[action=?][method=?]", project_maps_path, "post" do

      assert_select "input#project_map_user_id[name=?]", "project_map[user_id]"

      assert_select "input#project_map_project_id[name=?]", "project_map[project_id]"

      assert_select "textarea#project_map_description[name=?]", "project_map[description]"
    end
  end
end
