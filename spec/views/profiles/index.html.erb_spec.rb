require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user => nil,
        :name => "Name",
        :employee_id => "Employee",
        :im => "MyText",
        :designation => nil,
        :manager_id => 1,
        :is_admin => false
      ),
      Profile.create!(
        :user => nil,
        :name => "Name",
        :employee_id => "Employee",
        :im => "MyText",
        :designation => nil,
        :manager_id => 1,
        :is_admin => false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Employee".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
