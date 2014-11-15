class ApiController < ApplicationController

	def ads
		@beacon = Beacon.where(major: params[:major]).first
		
		ad = @beacon.active_store.active_ad

		data = {}
		data[:id] = ad.id
		data[:store_image] = ad.store.image.url
		data[:store_name] = ad.store.name
		data[:image] = ad.image.url
		data[:name] = ad.name
		data[:description] = ad.description
		render :json => data
		
	end

	def beacon

	end
end
