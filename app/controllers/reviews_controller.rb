class ReviewsController < ApplicationController

  def create 
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    @review.user_id = current_user.id 

    if @review.save
      redirect_to product_path(params[:product_id])
    else
      redirect_to product_path(params[:product_id])
    end
  end 

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to product_path(@review.product_id)
  end


  private
    def review_params
      params.require(:review).permit(:rating, :description)
    end 

end
