class ReviewsController < ApplicationController
  def new
    # raise
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # raise
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    @restaurant = @review.restaurant
    redirect_to restaurant_path(@restaurant), status: :see_other
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
