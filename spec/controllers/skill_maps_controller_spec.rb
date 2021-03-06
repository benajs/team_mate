require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe SkillMapsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # SkillMap. As you add validations to SkillMap, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # SkillMapsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all skill_maps as @skill_maps" do
      skill_map = SkillMap.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:skill_maps)).to eq([skill_map])
    end
  end

  describe "GET #show" do
    it "assigns the requested skill_map as @skill_map" do
      skill_map = SkillMap.create! valid_attributes
      get :show, {:id => skill_map.to_param}, valid_session
      expect(assigns(:skill_map)).to eq(skill_map)
    end
  end

  describe "GET #new" do
    it "assigns a new skill_map as @skill_map" do
      get :new, {}, valid_session
      expect(assigns(:skill_map)).to be_a_new(SkillMap)
    end
  end

  describe "GET #edit" do
    it "assigns the requested skill_map as @skill_map" do
      skill_map = SkillMap.create! valid_attributes
      get :edit, {:id => skill_map.to_param}, valid_session
      expect(assigns(:skill_map)).to eq(skill_map)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new SkillMap" do
        expect {
          post :create, {:skill_map => valid_attributes}, valid_session
        }.to change(SkillMap, :count).by(1)
      end

      it "assigns a newly created skill_map as @skill_map" do
        post :create, {:skill_map => valid_attributes}, valid_session
        expect(assigns(:skill_map)).to be_a(SkillMap)
        expect(assigns(:skill_map)).to be_persisted
      end

      it "redirects to the created skill_map" do
        post :create, {:skill_map => valid_attributes}, valid_session
        expect(response).to redirect_to(SkillMap.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved skill_map as @skill_map" do
        post :create, {:skill_map => invalid_attributes}, valid_session
        expect(assigns(:skill_map)).to be_a_new(SkillMap)
      end

      it "re-renders the 'new' template" do
        post :create, {:skill_map => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested skill_map" do
        skill_map = SkillMap.create! valid_attributes
        put :update, {:id => skill_map.to_param, :skill_map => new_attributes}, valid_session
        skill_map.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested skill_map as @skill_map" do
        skill_map = SkillMap.create! valid_attributes
        put :update, {:id => skill_map.to_param, :skill_map => valid_attributes}, valid_session
        expect(assigns(:skill_map)).to eq(skill_map)
      end

      it "redirects to the skill_map" do
        skill_map = SkillMap.create! valid_attributes
        put :update, {:id => skill_map.to_param, :skill_map => valid_attributes}, valid_session
        expect(response).to redirect_to(skill_map)
      end
    end

    context "with invalid params" do
      it "assigns the skill_map as @skill_map" do
        skill_map = SkillMap.create! valid_attributes
        put :update, {:id => skill_map.to_param, :skill_map => invalid_attributes}, valid_session
        expect(assigns(:skill_map)).to eq(skill_map)
      end

      it "re-renders the 'edit' template" do
        skill_map = SkillMap.create! valid_attributes
        put :update, {:id => skill_map.to_param, :skill_map => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested skill_map" do
      skill_map = SkillMap.create! valid_attributes
      expect {
        delete :destroy, {:id => skill_map.to_param}, valid_session
      }.to change(SkillMap, :count).by(-1)
    end

    it "redirects to the skill_maps list" do
      skill_map = SkillMap.create! valid_attributes
      delete :destroy, {:id => skill_map.to_param}, valid_session
      expect(response).to redirect_to(skill_maps_url)
    end
  end

end
