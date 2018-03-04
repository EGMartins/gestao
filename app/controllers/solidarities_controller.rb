class SolidaritiesController < ApplicationController
  before_action :set_solidarity, only: [:show, :edit, :update, :destroy]

  # GET /solidarities
  # GET /solidarities.json
  def index
    @solidarities = Solidarity.all
  end

  # GET /solidarities/1
  # GET /solidarities/1.json
  def show
  end

  # GET /solidarities/new
  def new
    @solidarity = Solidarity.new
  end

  # GET /solidarities/1/edit
  def edit
  end

  # POST /solidarities
  # POST /solidarities.json
  def create
    @solidarity = Solidarity.new(solidarity_params)

    respond_to do |format|
      if @solidarity.save
        format.html { redirect_to @solidarity, notice: 'Solidarity was successfully created.' }
        format.json { render :show, status: :created, location: @solidarity }
      else
        format.html { render :new }
        format.json { render json: @solidarity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /solidarities/1
  # PATCH/PUT /solidarities/1.json
  def update
    respond_to do |format|
      if @solidarity.update(solidarity_params)
        format.html { redirect_to @solidarity, notice: 'Solidarity was successfully updated.' }
        format.json { render :show, status: :ok, location: @solidarity }
      else
        format.html { render :edit }
        format.json { render json: @solidarity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /solidarities/1
  # DELETE /solidarities/1.json
  def destroy
    @solidarity.destroy
    respond_to do |format|
      format.html { redirect_to solidarities_url, notice: 'Solidarity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solidarity
      @solidarity = Solidarity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def solidarity_params
      params.require(:solidarity).permit(:name, :money, :card, :recipe_id)
    end
end
