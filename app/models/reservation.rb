class Reservation < ApplicationRecord
	belongs_to :user
	def self.calculate_total(total_nights, room_rate)
	
    cost = total_nights * room_rate 
    taxes = cost * 0.15
    cost + taxes
	end
	def self.total_nights(reservation)

    (reservation.check_out - reservation.check_in).to_i
  end

  
end
