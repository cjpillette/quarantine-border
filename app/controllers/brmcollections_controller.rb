class BrmcollectionsController < ApplicationController
  before_action :set_brmcollection, only: [:show, :edit, :update, :destroy]
  before_action :display_airport, :display_bordergranularity
  

  # GET /brmcollections
  # GET /brmcollections.json
  def index
    @brmcollections = Brmcollection.all
  end

  # GET /brmcollections/1
  # GET /brmcollections/1.json
  def show
  end

  # GET /brmcollections/new
  def new
    @brmcollection = Brmcollection.new
  end

  # GET /brmcollections/1/edit
  def edit
  end

  # POST /brmcollections
  # POST /brmcollections.json
  def create
    @brmcollection = Brmcollection.new(brmcollection_params)
    @brmcollection.airport_id = params[:airport_id]
    @brmcollection.bordergranularity_id = params[:bordergranularity_id]

    respond_to do |format|
      if @brmcollection.save
        format.html { redirect_to brmcollections_path, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @brmcollection }
      else
        format.html { render :new }
        format.json { render json: @brmcollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brmcollections/1
  # PATCH/PUT /brmcollections/1.json
  def update
    respond_to do |format|
      if @brmcollection.update(brmcollection_params)
        format.html { redirect_to brmcollections_path, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @brmcollection }
      else
        format.html { render :edit }
        format.json { render json: @brmcollection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brmcollections/1
  # DELETE /brmcollections/1.json
  def destroy
    @brmcollection.destroy
    respond_to do |format|
      format.html { redirect_to brmcollections_url, notice: 'Brmcollection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brmcollection
      @brmcollection = Brmcollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brmcollection_params
      params.require(:brmcollection).permit(:collectedon, :weight, :chopped, :mqeisubmitted)
    end

    def display_airport
      @airports = Airport.all.map{ |c| [c.name, c.id]}
    end

    def display_bordergranularity
      @bordergranularities = Bordergranularity.all.map{ |c| [c.checkpoint, c.id]}
    end
end
