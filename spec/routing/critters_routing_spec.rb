require "rails_helper"

RSpec.describe CrittersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/critters").to route_to("critters#index")
    end

    it "routes to #new" do
      expect(:get => "/critters/new").to route_to("critters#new")
    end

    it "routes to #show" do
      expect(:get => "/critters/1").to route_to("critters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/critters/1/edit").to route_to("critters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/critters").to route_to("critters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/critters/1").to route_to("critters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/critters/1").to route_to("critters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/critters/1").to route_to("critters#destroy", :id => "1")
    end

  end
end
