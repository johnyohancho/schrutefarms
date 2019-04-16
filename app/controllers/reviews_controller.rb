class ReviewsController < ApplicationController
    def new
      @review = Review.new
    end

    def create
      @review = Review.new(review_params)
    end

    def edit
    end

    def update
    end

    private

    def review_params
      params.require(:review).permit(:content, :user_id, :item_id, :rating)
    end
end
