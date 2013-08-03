class RoomsController < ApplicationController

	# The "index" method shows all thr rooms in the database.
	# It sends all the rooms which are in database to the view file
	def index
		@rooms = Room.find(:all)
	end

	def show
			@room = Room.find_by_id(params[:id])
			# If the user entered to the url an ID which doesn't exist, redirect to the list of the rooms
			if !@room
   				 redirect_to :action => "index"
			end

	end

end
