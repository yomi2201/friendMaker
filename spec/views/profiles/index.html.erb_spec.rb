require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user_id => 2,
        :profile_q_number => 3,
        :profile_a => "Profile A",
        :delete_flag => false
      ),
      Profile.create!(
        :user_id => 2,
        :profile_q_number => 3,
        :profile_a => "Profile A",
        :delete_flag => false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Profile A".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
