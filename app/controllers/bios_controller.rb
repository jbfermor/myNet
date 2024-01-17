class BiosController < ApplicationController
  before_action :set_bio, only: %i[ show edit update destroy ]

  # GET /bios/1 or /bios/1.json
  def show
  end

  # GET /bios/new
  def new
    @bio = Bio.new
  end

  # GET /bios/1/edit
  def edit
  end

  # POST /bios or /bios.json
  def create
    @bio = Bio.new(bio_params)
    @bio.user = current_user
    respond_to do |format|
      if @bio.save
        format.html { redirect_to bio_url(@bio), notice: "Bio was successfully created." }
        format.json { render :show, status: :created, location: @bio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bios/1 or /bios/1.json
  def update
    respond_to do |format|
      if @bio.update(bio_params)
        format.html { redirect_to bio_url(@bio), notice: "Bio was successfully updated." }
        format.json { render :show, status: :ok, location: @bio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bios/1 or /bios/1.json
  def destroy
    @bio.destroy

    respond_to do |format|
      format.html { redirect_to bios_url, notice: "Bio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bio
      @bio = Bio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bio_params
      params.require(:bio).permit(:nickname, :name, :surname1, 
      :surname2, :birth_date, :address, :city, :province, 
      :postal_code, :country, :phone, :user_id, :avatar)
    end

end
