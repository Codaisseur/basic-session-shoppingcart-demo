class HourGlassesController < ApplicationController
  before_action :set_hour_glass, only: [:show, :edit, :update, :destroy]

  # GET /hour_glasses
  # GET /hour_glasses.json
  def index
    @hour_glasses = HourGlass.all
  end

  # GET /hour_glasses/1
  # GET /hour_glasses/1.json
  def show
  end

  # GET /hour_glasses/new
  def new
    @hour_glass = HourGlass.new
  end

  # GET /hour_glasses/1/edit
  def edit
  end

  # POST /hour_glasses
  # POST /hour_glasses.json
  def create
    @hour_glass = HourGlass.new(hour_glass_params)

    respond_to do |format|
      if @hour_glass.save
        format.html { redirect_to @hour_glass, notice: 'Hour glass was successfully created.' }
        format.json { render :show, status: :created, location: @hour_glass }
      else
        format.html { render :new }
        format.json { render json: @hour_glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hour_glasses/1
  # PATCH/PUT /hour_glasses/1.json
  def update
    respond_to do |format|
      if @hour_glass.update(hour_glass_params)
        format.html { redirect_to @hour_glass, notice: 'Hour glass was successfully updated.' }
        format.json { render :show, status: :ok, location: @hour_glass }
      else
        format.html { render :edit }
        format.json { render json: @hour_glass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hour_glasses/1
  # DELETE /hour_glasses/1.json
  def destroy
    @hour_glass.destroy
    respond_to do |format|
      format.html { redirect_to hour_glasses_url, notice: 'Hour glass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hour_glass
      @hour_glass = HourGlass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hour_glass_params
      params.require(:hour_glass).permit(:name, :price, :description)
    end
end
