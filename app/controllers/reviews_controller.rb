class ReviewsController < ApplicationController
  before_action :require_login


  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create(review_params)
    @review.user = current_user
    @reviews = @product.reviews

    if @review.save
      redirect_to @product, notice: 'Review created!'
    else
      render 'products/show'
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find params[:id]
    @review.destroy
    redirect_to @product, notice: 'Product deleted!'
  end

  private

  def require_login
    unless current_user
      flash[:error] = "You must be logged in to access this section"
      redirect_to '/users/new'
    end
  end

  def review_params
    params.require(:review).permit(
      :rating,
      :description
    )
  end
end
