require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user_id => 1,
      :profile_q_number => 1,
      :profile_a => "MyString",
      :delete_flag => false
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[profile_q_number]"

      assert_select "input[name=?]", "profile[profile_a]"

      assert_select "input[name=?]", "profile[delete_flag]"
    end
  end
end
