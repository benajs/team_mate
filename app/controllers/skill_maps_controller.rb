class SkillMapsController < ApplicationController
  before_action :set_skill_map, only: [:show, :edit, :update, :destroy]

  # GET /skill_maps
  # GET /skill_maps.json
  def index
    @skill_maps = SkillMap.all
  end

  # GET /skill_maps/1
  # GET /skill_maps/1.json
  def show
  end

  # GET /skill_maps/new
  def new
    @skill_map = SkillMap.new
  end

  # GET /skill_maps/1/edit
  def edit
  end

  # POST /skill_maps
  # POST /skill_maps.json
  def create
    @skill_map = SkillMap.new(skill_map_params)

    respond_to do |format|
      if @skill_map.save
        format.html { redirect_to @skill_map, notice: 'Skill map was successfully created.' }
        format.json { render :show, status: :created, location: @skill_map }
      else
        format.html { render :new }
        format.json { render json: @skill_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skill_maps/1
  # PATCH/PUT /skill_maps/1.json
  def update
    respond_to do |format|
      if @skill_map.update(skill_map_params)
        format.html { redirect_to @skill_map, notice: 'Skill map was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill_map }
      else
        format.html { render :edit }
        format.json { render json: @skill_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skill_maps/1
  # DELETE /skill_maps/1.json
  def destroy
    @skill_map.destroy
    respond_to do |format|
      format.html { redirect_to skill_maps_url, notice: 'Skill map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_map
      @skill_map = SkillMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skill_map_params
      params.require(:skill_map).permit(:skill_id, :user, :range)
    end
end
