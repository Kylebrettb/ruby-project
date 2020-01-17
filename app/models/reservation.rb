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



 validates_presence_of :check_in
 validates_presence_of :check_out


 validate :future_check_in
 validate :future_check_out


 def future_check_in
	 if check_in.present? && check_in.to_date < DateTime.now.to_date
		 errors.add(:check_in, 'must be a valid current or future date')
	 end
 end



 def future_check_out
	 if check_in.present? && check_out.present? &&
			 check_out.to_date < check_in.to_date
		 errors.add(:check_out, 'must be a valid date after your check in ' \
			 'date')
	 end
 end




end
