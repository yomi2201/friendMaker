require 'rails_helper'

RSpec.describe "OriginalQuestions", type: :request do
  describe "GET /original_questions" do
    it "works! (now write some real specs)" do
      get original_questions_path
      expect(response).to have_http_status(200)
    end
  end
end
