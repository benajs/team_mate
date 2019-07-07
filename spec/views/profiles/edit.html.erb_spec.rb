require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user => nil,
      :name => "MyString",
      :employee_id => "MyString",
      :im => "MyText",
      :designation => nil,
      :manager_id => 1,
      :is_admin => false
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

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
