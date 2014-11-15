class BeaconsController < ApplicationController

	def index
		@beacons = Beacon.all
	end

	def new

	end

	def create
		@beacon = Beacon.create beacon_params
		#@beacon.save

		redirect_to @beacon
	end

	def show
		@beacon = Beacon.find params[:id]
	end

	private
  	def beacon_params
    	params.require(:beacon).permit(:uuid)
  	end
end
