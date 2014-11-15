class StoresController < ApplicationController

	def index
		@stores = Store.all
	end

	def edit
		@store = Store.find params[:id]
	end

	def new
	end

	def create
		@store = Store.create store_params
	end

	private
	def store_params
		params.require(:store).permit(:name, :avatar)
	end
end
