class Hotel < ApplicationRecord
	has_many :hotel_rooms
	has_many :reviewers, through: :reviews, :class_name => "User", :foreign_key => :user_id
	has_many :guests, through: :reservations, :class_name => "User", :foreign_key => :user_id
	has_many :reviews
	def new_reviews
    reviews.where("created_at > ?", Time.now-1.day)
  end
end
