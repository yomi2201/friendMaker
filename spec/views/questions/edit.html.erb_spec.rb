require 'rails_helper'

RSpec.describe "questions/edit", type: :view do
  before(:each) do
    @question = assign(:question, Question.create!(
      :question_number => 1,
      :user_a_id => 1,
      :user_q_id => 1,
      :delete_flag => false
    ))
  end

  it "renders the edit question form" do
    render

    assert_select "form[action=?][method=?]", question_path(@question), "post" do

      assert_select "input[name=?]", "question[question_number]"

      assert_select "input[name=?]", "question[user_a_id]"

      assert_select "input[name=?]", "question[user_q_id]"

      assert_select "input[name=?]", "question[delete_flag]"
    end
  end
end
