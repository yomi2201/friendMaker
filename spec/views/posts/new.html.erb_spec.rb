require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :question => "MyString",
      :answer => "MyString",
      :user_q_id => 1,
      :user_a_id => 1
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "input[name=?]", "post[question]"

      assert_select "input[name=?]", "post[answer]"

      assert_select "input[name=?]", "post[user_q_id]"

      assert_select "input[name=?]", "post[user_a_id]"
    end
  end
end
