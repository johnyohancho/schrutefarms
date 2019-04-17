class ReviewsController < ApplicationController
    before_action :authorize!

    def new
      @review = Review.new
      @item = Item.find(params[:item_id])
    end

    def create
      @review = Review.new(content: review_params[:content], rating: review_params[:rating], item_id: params[:item_id])
      @review.user = current_user
      @review.save
      redirect_to item_path(params[:item_id])
    end

    def edit
    end

    def update
    end

    private

    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
