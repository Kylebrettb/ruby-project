class ReservationsController < ApplicationController
	def create


		@reservation = Reservation.new(reservations_params)
		total_nights = Reservation.total_nights(@reservation)
		room_rate = HotelRoom.find(@reservation.hotel_room_id).price
		total_price = Reservation.calculate_total(total_nights, room_rate)
		@reservation.price = total_price

if @reservation.valid?
	@reservation.save
		session[:reservation] = @reservation
		redirect_to'/confirmation'
		 else
			   render :new
			 end
	end
	def new

		@hotel_room = HotelRoom.find(params[:hotel_room_id])
		@reservation = Reservation.new(hotel_id: @hotel_room.hotel_id, hotel_room_id: @hotel_room.id)

	end

	def confirmation
		session.inspect
		@reservation = Reservation.find(session[:reservation]["id"])
		@hotel = Hotel.find(session[:reservation]["hotel_id"])
		@hotel_room = HotelRoom.find(session[:reservation]["hotel_room_id"])


	end

	private

	def reservations_params
  params.require(:reservation).permit(:check_in, :check_out, :price, :hotel_id, :user_id, :hotel_room_id)
end

end
