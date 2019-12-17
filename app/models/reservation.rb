class Reservation < ApplicationRecord
	belongs_to :user
	def calculate_total
	nights = self.total_nights == 0? 1 : self.total_nights
    cost = nights * room.room_rate * number_of_rooms
    taxes = cost * 0.15
    cost + taxes
	end
	def total_nights
    (checkout_datetime.to_date - checkin_datetime.to_date).to_i
  end

  
end
