class ProjectMapsController < ApplicationController
  before_action :set_project_map, only: [:show, :edit, :update, :destroy]

  # GET /project_maps
  # GET /project_maps.json
  def index
    @project_maps_search = ProjectMap.search(params[:q])
	@project_maps_selected = @project_maps_search.result
  end

  # GET /project_maps/1
  # GET /project_maps/1.json
  def show
  end

  # GET /project_maps/new
  def new
    @project_map = ProjectMap.new
  end

  # GET /project_maps/1/edit
  def edit
  end

  # POST /project_maps
  # POST /project_maps.json
  def create
    @project_map = ProjectMap.new(project_map_params)
	@project_map.user_id = current_user.id
    respond_to do |format|
      if @project_map.save
        format.html { redirect_to @project_map, notice: 'Project map was successfully created.' }
        format.json { render :show, status: :created, location: @project_map }
      else
        format.html { render :new }
        format.json { render json: @project_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_maps/1
  # PATCH/PUT /project_maps/1.json
  def update
    respond_to do |format|
      if @project_map.update(project_map_params)
        format.html { redirect_to @project_map, notice: 'Project map was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_map }
      else
        format.html { render :edit }
        format.json { render json: @project_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_maps/1
  # DELETE /project_maps/1.json
  def destroy
    @project_map.destroy
    respond_to do |format|
      format.html { redirect_to project_maps_url, notice: 'Project map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_map
      @project_map = ProjectMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_map_params
      params.require(:project_map).permit(:user_id, :project_id, :description)
    end
end
