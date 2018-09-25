require "rails_helper"

RSpec.describe OriginalsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/originals").to route_to("originals#index")
    end

    it "routes to #new" do
      expect(:get => "/originals/new").to route_to("originals#new")
    end

    it "routes to #show" do
      expect(:get => "/originals/1").to route_to("originals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/originals/1/edit").to route_to("originals#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/originals").to route_to("originals#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/originals/1").to route_to("originals#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/originals/1").to route_to("originals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/originals/1").to route_to("originals#destroy", :id => "1")
    end
  end
end
