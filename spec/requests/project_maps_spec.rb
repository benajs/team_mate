require 'rails_helper'

RSpec.describe "ProjectMaps", type: :request do
  describe "GET /project_maps" do
    it "works! (now write some real specs)" do
      get project_maps_path
      expect(response).to have_http_status(200)
    end
  end
end
