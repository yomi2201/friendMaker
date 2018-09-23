require 'rails_helper'

RSpec.describe "profiles/show", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :user_id => 2,
      :profile_q_number => 3,
      :profile_a => "Profile A",
      :delete_flag => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Profile A/)
    expect(rendered).to match(/false/)
  end
end
