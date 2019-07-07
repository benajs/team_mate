require "rails_helper"

RSpec.describe SkillMapsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/skill_maps").to route_to("skill_maps#index")
    end

    it "routes to #new" do
      expect(:get => "/skill_maps/new").to route_to("skill_maps#new")
    end

    it "routes to #show" do
      expect(:get => "/skill_maps/1").to route_to("skill_maps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/skill_maps/1/edit").to route_to("skill_maps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/skill_maps").to route_to("skill_maps#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/skill_maps/1").to route_to("skill_maps#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/skill_maps/1").to route_to("skill_maps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/skill_maps/1").to route_to("skill_maps#destroy", :id => "1")
    end

  end
end
