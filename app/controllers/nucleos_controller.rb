class NucleosController < ApplicationController
  before_action :set_nucleo, only: [:show, :edit, :update, :destroy]

  # GET /nucleos
  # GET /nucleos.json
  def index
    @nucleos = Nucleo.all
  end

  # GET /nucleos/1
  # GET /nucleos/1.json
  def show
  end

  # GET /nucleos/new
  def new
    @nucleo = Nucleo.new
  end

  # GET /nucleos/1/edit
  def edit
  end

  # POST /nucleos
  # POST /nucleos.json
  def create
    @nucleo = Nucleo.new(nucleo_params)

    respond_to do |format|
      if @nucleo.save
        format.html { redirect_to @nucleo, notice: 'Nucleo was successfully created.' }
        format.json { render :show, status: :created, location: @nucleo }
      else
        format.html { render :new }
        format.json { render json: @nucleo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nucleos/1
  # PATCH/PUT /nucleos/1.json
  def update
    respond_to do |format|
      if @nucleo.update(nucleo_params)
        format.html { redirect_to @nucleo, notice: 'Nucleo was successfully updated.' }
        format.json { render :show, status: :ok, location: @nucleo }
      else
        format.html { render :edit }
        format.json { render json: @nucleo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nucleos/1
  # DELETE /nucleos/1.json
  def destroy
    @nucleo.destroy
    respond_to do |format|
      format.html { redirect_to nucleos_url, notice: 'Nucleo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nucleo
      @nucleo = Nucleo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nucleo_params
      params.require(:nucleo).permit(:nome)
    end
end
