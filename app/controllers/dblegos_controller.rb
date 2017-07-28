class DblegosController < ApplicationController
  before_action :set_dblego, only: [:show, :edit, :update, :destroy]

  # GET /dblegos
  # GET /dblegos.json
  def index
    @dblegos = Dblego.all
  end

  # GET /dblegos/1
  # GET /dblegos/1.json
  def show
  end

  # GET /dblegos/new
  def new
    @dblego = Dblego.new
  end

  # GET /dblegos/1/edit
  def edit
  end

  # POST /dblegos
  # POST /dblegos.json
  def create
    @dblego = Dblego.new(dblego_params)

    respond_to do |format|
      if @dblego.save
        format.html { redirect_to @dblego, notice: 'Dblego was successfully created.' }
        format.json { render :show, status: :created, location: @dblego }
      else
        format.html { render :new }
        format.json { render json: @dblego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dblegos/1
  # PATCH/PUT /dblegos/1.json
  def update
    respond_to do |format|
      if @dblego.update(dblego_params)
        format.html { redirect_to @dblego, notice: 'Dblego was successfully updated.' }
        format.json { render :show, status: :ok, location: @dblego }
      else
        format.html { render :edit }
        format.json { render json: @dblego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dblegos/1
  # DELETE /dblegos/1.json
  def destroy
    @dblego.destroy
    respond_to do |format|
      format.html { redirect_to dblegos_url, notice: 'Dblego was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dblego
      @dblego = Dblego.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dblego_params
      params.require(:dblego).permit(:part, :color, :quantity)
    end
end
