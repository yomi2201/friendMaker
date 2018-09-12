require 'rails_helper'

RSpec.describe "posts/show", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :question => "Question",
      :answer => "Answer",
      :user_q_id => 2,
      :user_a_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Question/)
    expect(rendered).to match(/Answer/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
