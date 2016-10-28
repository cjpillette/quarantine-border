class FlightsController < ApplicationController
before_action :find_flight, only: [:show, :edit, :update, :destroy]
before_action :display_airport

		def index
			@flights = Flight.all.order("created_at DESC")
		end

		def new
			@flight = Flight.new
		end
		
		def show
		end

		def create			
			@flight = Flight.new(flight_params)
			@flight.airport_id = params[:airport_id]
			
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
				redirect_to flight_path(@flight)
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
			params.require(:flight).permit(:date, :plane, :total_pax, :total_nc_pax, :start_time, :finish_time, :airport_id)
		end

		def find_flight
			@flight = Flight.find(params[:id])
		end

		def display_airport
			@airports = Airport.all.map{ |c| [c.name, c.id]}
		end

end
