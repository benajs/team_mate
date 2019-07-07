require 'rails_helper'

RSpec.describe "project_maps/index", type: :view do
  before(:each) do
    assign(:project_maps, [
      ProjectMap.create!(
        :user => nil,
        :project => nil,
        :description => "MyText"
      ),
      ProjectMap.create!(
        :user => nil,
        :project => nil,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of project_maps" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
