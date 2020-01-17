class HotelsController < ApplicationController
	def index
		@hotels = Hotel.all
	end
	def show
		@review = Review.new
		@hotel = Hotel.find(params[:id])
	end
end
