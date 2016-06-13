class PeicesController < ApplicationController
  before_action :set_peice, only: [:show, :edit, :update, :destroy]

  # GET /peices
  # GET /peices.json
  def index
    @peices = Peice.all
  end

  # GET /peices/1
  # GET /peices/1.json
  def show
  end

  # GET /peices/new
  def new
    @peice = Peice.new
  end

  # GET /peices/1/edit
  def edit
  end

  # POST /peices
  # POST /peices.json
  def create
    @peice = Peice.new(peice_params)

    respond_to do |format|
      if @peice.save
        format.html { redirect_to @peice, notice: 'Peice was successfully created.' }
        format.json { render :show, status: :created, location: @peice }
      else
        format.html { render :new }
        format.json { render json: @peice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peices/1
  # PATCH/PUT /peices/1.json
  def update
    respond_to do |format|
      if @peice.update(peice_params)
        format.html { redirect_to @peice, notice: 'Peice was successfully updated.' }
        format.json { render :show, status: :ok, location: @peice }
      else
        format.html { render :edit }
        format.json { render json: @peice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peices/1
  # DELETE /peices/1.json
  def destroy
    @peice.destroy
    respond_to do |format|
      format.html { redirect_to peices_url, notice: 'Peice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peice
      @peice = Peice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peice_params
      params.require(:peice).permit(:title, :description, :image_url, :price, :category, :subcategory)
    end
end
