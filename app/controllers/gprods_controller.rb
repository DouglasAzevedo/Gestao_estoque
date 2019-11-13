class GprodsController < ApplicationController
  before_action :set_gprod, only: [:show, :edit, :update, :destroy]

  # GET /gprods
  # GET /gprods.json
  def index
    @gprods = Gprod.all
  end

  # GET /gprods/1
  # GET /gprods/1.json
  def show
  end

  # GET /gprods/new
  def new
    @gprod = Gprod.new
  end

  # GET /gprods/1/edit
  def edit
  end

  # POST /gprods
  # POST /gprods.json
  def create
    @gprod = Gprod.new(gprod_params)

    respond_to do |format|
      if @gprod.save
        format.html { redirect_to @gprod, notice: 'Gprod was successfully created.' }
        format.json { render :show, status: :created, location: @gprod }
      else
        format.html { render :new }
        format.json { render json: @gprod.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gprods/1
  # PATCH/PUT /gprods/1.json
  def update
    respond_to do |format|
      if @gprod.update(gprod_params)
        format.html { redirect_to @gprod, notice: 'Gprod was successfully updated.' }
        format.json { render :show, status: :ok, location: @gprod }
      else
        format.html { render :edit }
        format.json { render json: @gprod.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gprods/1
  # DELETE /gprods/1.json
  def destroy
    @gprod.destroy
    respond_to do |format|
      format.html { redirect_to gprods_url, notice: 'Gprod was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gprod
      @gprod = Gprod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gprod_params
      params.require(:gprod).permit(:nome)
    end
end
