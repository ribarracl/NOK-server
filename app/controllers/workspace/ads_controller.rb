require 'base64'

class Workspace::AdsController < ApplicationController

	before_action :load_stores

	layout 'workspace'

	def index
		id = Base64.urlsafe_decode64 params[:store_id]
		@store = Store.where(id: id).first
		@ads = @store.ads
	end

	def new
		id = Base64.urlsafe_decode64 params[:store_id]
		@store = Store.where(id: id).first
	end

	def create
		id = Base64.urlsafe_decode64 params[:store_id]
		@store = Store.where(id: id).first

		@store.ads.each do |ad|
			ad.update :active => false
		end

		ad = StoreAd.new ad_params
		ad.active = true
		ad.store = @store
		ad.save
		
		redirect_to workspace_store_ads_path(Base64.urlsafe_encode64 @store.id.to_s)

	end

	private
	def ad_params
		params.require(:ad).permit(:name, :description, :expires, :image)
	end

	def load_stores
		@stores = Store.order(name: :asc).all
	end
end
