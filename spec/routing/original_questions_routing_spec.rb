require "rails_helper"

RSpec.describe OriginalQuestionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/original_questions").to route_to("original_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/original_questions/new").to route_to("original_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/original_questions/1").to route_to("original_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/original_questions/1/edit").to route_to("original_questions#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/original_questions").to route_to("original_questions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/original_questions/1").to route_to("original_questions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/original_questions/1").to route_to("original_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/original_questions/1").to route_to("original_questions#destroy", :id => "1")
    end
  end
end
