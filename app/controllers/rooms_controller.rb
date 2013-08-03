class RoomsController < ApplicationController

	# The "index" method shows all thr rooms in the database.
	# It sends all the rooms in database to the view file
	def index
		@rooms = Room.find(:all)
	end

	def show
			@room = Room.find_by_id(params[:id])
			# If the user entered an ID which doesn't exist, redirect to the list of the room
			if !@room
   				 redirect_to :action => "index"
			end

	end

end
