require "rails_helper"

RSpec.describe ProjectMapsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/project_maps").to route_to("project_maps#index")
    end

    it "routes to #new" do
      expect(:get => "/project_maps/new").to route_to("project_maps#new")
    end

    it "routes to #show" do
      expect(:get => "/project_maps/1").to route_to("project_maps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/project_maps/1/edit").to route_to("project_maps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/project_maps").to route_to("project_maps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/project_maps/1").to route_to("project_maps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/project_maps/1").to route_to("project_maps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/project_maps/1").to route_to("project_maps#destroy", :id => "1")
    end

  end
end
