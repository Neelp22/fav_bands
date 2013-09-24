class WelcomeController < ApplicationController

	def index
		@band = Band.all
	end

end