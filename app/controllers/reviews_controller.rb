class ReviewsController < ApplicationController
  def create
    @review = Review.create(review_params)

		 	redirect_to "/hotels/#{review_params[:hotel_id]}"
  end

  private

  def review_params
  params.require(:review).permit(:user_id, :hotel_id, :content)
end
end
