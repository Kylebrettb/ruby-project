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

	attr_accessor :checkin_date,  :checkout_date,

 validates_presence_of :checkin_date
 validates_presence_of :checkout_date


 validate :future_checkin_date
 validate :future_checkout_date


 def future_checkin_date
	 if checkin_date.present? && checkin_date.to_date < DateTime.now.to_date
		 errors.add(:checkin_date, 'must be a valid current or future date')
	 end
 end



 def future_checkout_date
	 if checkin_date.present? && checkout_date.present? &&
			 checkout_date.to_date < checkin_date.to_date
		 errors.add(:checkout_date, 'must be a valid date after your check in ' \
			 'date')
	 end
 end




end
