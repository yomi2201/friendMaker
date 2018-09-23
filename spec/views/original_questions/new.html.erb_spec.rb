require 'rails_helper'

RSpec.describe "original_questions/new", type: :view do
  before(:each) do
    assign(:original_question, OriginalQuestion.new(
      :question_id => 1,
      :original_question => "MyString"
    ))
  end

  it "renders new original_question form" do
    render

    assert_select "form[action=?][method=?]", original_questions_path, "post" do

      assert_select "input[name=?]", "original_question[question_id]"

      assert_select "input[name=?]", "original_question[original_question]"
    end
  end
end
