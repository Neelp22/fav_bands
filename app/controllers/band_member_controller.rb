class BandMemberController < ApplicationController

	def new
		id = params[:id]
		@band = Band.find(id)
	end

	def member_create
		id = params[:id]
		band = Band.find(id)
		band.band_members << BandMember.create(params[:band_member])
		redirect_to '/'
	end
end
