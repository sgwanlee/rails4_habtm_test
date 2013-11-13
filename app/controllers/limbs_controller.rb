class LimbsController < ApplicationController
  before_action :set_limb, only: [:show, :edit, :update, :destroy]

  # GET /limbs
  # GET /limbs.json
  def index
    @limbs = Limb.all
  end

  # GET /limbs/1
  # GET /limbs/1.json
  def show
  end

  # GET /limbs/new
  def new
    @limb = Limb.new
  end

  # GET /limbs/1/edit
  def edit
  end

  # POST /limbs
  # POST /limbs.json
  def create
    @limb = Limb.new(limb_params)

    respond_to do |format|
      if @limb.save
        format.html { redirect_to @limb, notice: 'Limb was successfully created.' }
        format.json { render action: 'show', status: :created, location: @limb }
      else
        format.html { render action: 'new' }
        format.json { render json: @limb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /limbs/1
  # PATCH/PUT /limbs/1.json
  def update
    respond_to do |format|
      if @limb.update(limb_params)
        format.html { redirect_to @limb, notice: 'Limb was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @limb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /limbs/1
  # DELETE /limbs/1.json
  def destroy
    @limb.destroy
    respond_to do |format|
      format.html { redirect_to limbs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_limb
      @limb = Limb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def limb_params
      params[:limb]
    end
end
