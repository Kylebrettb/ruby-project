class ReservationsController < ApplicationController
	def create
		
		@reservation = Reservation.create(params)
	end
	def new 
		@hotel_room = HotelRoom.find(params[:hotel_room_id])
		@reservation = Reservation.new
	end
end
