require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user_id => 1,
      :profile_q_number => 1,
      :profile_a => "MyString",
      :delete_flag => false
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[profile_q_number]"

      assert_select "input[name=?]", "profile[profile_a]"

      assert_select "input[name=?]", "profile[delete_flag]"
    end
  end
end
