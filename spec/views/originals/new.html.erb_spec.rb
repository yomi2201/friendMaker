require 'rails_helper'

RSpec.describe "originals/new", type: :view do
  before(:each) do
    assign(:original, Original.new(
      :question_id => 1,
      :question => "MyString"
    ))
  end

  it "renders new original form" do
    render

    assert_select "form[action=?][method=?]", originals_path, "post" do

      assert_select "input[name=?]", "original[question_id]"

      assert_select "input[name=?]", "original[question]"
    end
  end
end
