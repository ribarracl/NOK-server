require 'base64'

class Workspace::StoresController < ApplicationController

	layout 'workspace'

	before_action :load_stores

	def index
		@stores = Store.order(name: :asc).all
		# @store = Store.first
	end

	def update
		id = Base64.urlsafe_decode64 params[:id]
		@store = Store.where(id: id).first

		@store.update store_params
		redirect_to :back
	end

	def show
		id = Base64.urlsafe_decode64 params[:id]
		
		@stores = Store.order(name: :asc).all
		@store = Store.where(id: id).first
		
	end

	private
	def store_params
		params.require(:store).permit(:image)
	end

	def load_stores
		@stores = Store.order(name: :asc).all
	end
end
