require 'rails_helper'

RSpec.describe "SkillMaps", type: :request do
  describe "GET /skill_maps" do
    it "works! (now write some real specs)" do
      get skill_maps_path
      expect(response).to have_http_status(200)
    end
  end
end
