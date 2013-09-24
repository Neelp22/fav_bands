class BandsController < ApplicationController
	def new

	end

	def create
		if band = Band.create(params[:band])
			redirect_to '/'
		else
			redirect_to "/bands/new"
		end
	end

	def edit 
		id = params[:id]
		@band = Band.find(id)
		
		redirect_to '/'
	end

	def delete
		id = params[:id]
		band = Band.find(id)
		band.destroy

		redirect_to '/'
	end
end
