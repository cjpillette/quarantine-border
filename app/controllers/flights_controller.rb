class FlightsController < ApplicationController
before_action :find_flight, only: [:show, :edit, :update, :destroy]
before_action :display_airport
before_action :display_inspectionregime

		def index
			if params[:airport].blank?
				@flights = Flight.all.order("created_at DESC")
			else
				@airport_id = Airport.find_by(name: params[:airport]).id
				@flights = Flight.where(:airport_id => @airport_id).order("created_at DESC")
			end
		end

		def new
			@flight = Flight.new
		end
		
		def show
		end

		def create			
			@flight = Flight.new(flight_params)
			
			if @flight.save
			redirect_to flights_path
				else
					render 'new'
				end
		end

		def edit
		end


		def update
			if @flight.update(flight_params)
				redirect_to flights_path
			else
				render 'edit'
			end
		end


		def destroy
				@flight.destroy
				redirect_to flights_path
		end

		

	private
		def flight_params
			params.require(:flight).permit(:date, :plane, :total_pax, :total_nc_pax, :start_time, :finish_time, :airport_id, :inspectionregime_id)
		end

		def find_flight
			@flight = Flight.find(params[:id])
		end

		def display_airport
			@airports = Airport.all.map{ |c| [c.name, c.id]}
		end

		def display_inspectionregime
			@inspectionregimes = Inspectionregime.all.map{ |c| [c.name, c.id]}
		end

end
