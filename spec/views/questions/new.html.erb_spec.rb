require 'rails_helper'

RSpec.describe "questions/new", type: :view do
  before(:each) do
    assign(:question, Question.new(
      :question_number => 1,
      :user_a_id => 1,
      :user_q_id => 1,
      :delete_flag => false
    ))
  end

  it "renders new question form" do
    render

    assert_select "form[action=?][method=?]", questions_path, "post" do

      assert_select "input[name=?]", "question[question_number]"

      assert_select "input[name=?]", "question[user_a_id]"

      assert_select "input[name=?]", "question[user_q_id]"

      assert_select "input[name=?]", "question[delete_flag]"
    end
  end
end
