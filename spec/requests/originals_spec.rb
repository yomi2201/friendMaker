require 'rails_helper'

RSpec.describe "Originals", type: :request do
  describe "GET /originals" do
    it "works! (now write some real specs)" do
      get originals_path
      expect(response).to have_http_status(200)
    end
  end
end
