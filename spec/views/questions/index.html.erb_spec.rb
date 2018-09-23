require 'rails_helper'

RSpec.describe "questions/index", type: :view do
  before(:each) do
    assign(:questions, [
      Question.create!(
        :question_number => 2,
        :user_a_id => 3,
        :user_q_id => 4,
        :delete_flag => false
      ),
      Question.create!(
        :question_number => 2,
        :user_a_id => 3,
        :user_q_id => 4,
        :delete_flag => false
      )
    ])
  end

  it "renders a list of questions" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
