class FreightsController < ApplicationController

  before_action :set_freight, only: [:show, :edit, :update, :destroy]
  before_action :display_brmtype, :display_airport
  

  def index
    @freights = Freight.all.order("created_at DESC")
  end

  
  def new
    @freight = Freight.new
  end

  def show
  end
 
  def edit
  end

 
  def create
    @freight = Freight.new(freight_params)
 ##   @brmcollection.airport_id = params[:airport_id]
  ##  @brmcollection.bordergranularity_id = params[:bordergranularity_id]

    respond_to do |format|
      if @freight.save
        format.html { redirect_to freights_path, notice: 'Entry was successfully created.' }
        format.json { render :show, status: :created, location: @freight }
      else
        format.html { render :new }
        format.json { render json: @freight.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def update
    respond_to do |format|
      if @freight.update(freight_params)
        format.html { redirect_to freights_path, notice: 'Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @freight }
      else
        format.html { render :edit }
        format.json { render json: @freight.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @freight.destroy
    respond_to do |format|
      format.html { redirect_to freights_url, notice: 'Freight was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_freight
      @freight = Freight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def freight_params
      params.require(:freight).permit(:airport_id, :inspectedon, :carrier, :brmtype_id, :ctnpresented, :ctnreleased, :start_time, :finish_time, :importer, :exporter, :permit, :noncompliance, :comment)
    end

    def display_brmtype
      @brmtypes = Brmtype.all.map{ |c| [c.name, c.id]}
    end

    def display_airport
      @airports = Airport.all.map{ |c| [c.name, c.id]}
    end

	
end
