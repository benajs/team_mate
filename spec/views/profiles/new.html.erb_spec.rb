require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user => nil,
      :name => "MyString",
      :employee_id => "MyString",
      :im => "MyText",
      :designation => nil,
      :manager_id => 1,
      :is_admin => false
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input#profile_user_id[name=?]", "profile[user_id]"

      assert_select "input#profile_name[name=?]", "profile[name]"

      assert_select "input#profile_employee_id[name=?]", "profile[employee_id]"

      assert_select "textarea#profile_im[name=?]", "profile[im]"

      assert_select "input#profile_designation_id[name=?]", "profile[designation_id]"

      assert_select "input#profile_manager_id[name=?]", "profile[manager_id]"

      assert_select "input#profile_is_admin[name=?]", "profile[is_admin]"
    end
  end
end
