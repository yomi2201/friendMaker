require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :question => "MyString",
      :answer => "MyString",
      :user_q_id => 1,
      :user_a_id => 1
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input[name=?]", "post[question]"

      assert_select "input[name=?]", "post[answer]"

      assert_select "input[name=?]", "post[user_q_id]"

      assert_select "input[name=?]", "post[user_a_id]"
    end
  end
end
