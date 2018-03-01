class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    # @current_user = current_user
    @product = Product.find params[:id]
    @reviews = Review.where(product_id: params[:id])
    @review = Review.new
  end

end
