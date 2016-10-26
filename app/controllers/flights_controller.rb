class FlightsController < ApplicationController

		def index
		@flights = Flight.all.order("created_at DESC")
		end

		def new
		@flight = Flight.new
		end
		
		def show
		@flight = Flight.find(params[:id])
		end

		def create
		@flight = Flight.new(flight_params)
		@flight.save

		redirect_to @flight
		end

		

	private
		def flight_params
			params.require(:flight).permit(:date, :plane, :total_pax, :total_nc_pax, :start_time, :finish_time)
		end
end
