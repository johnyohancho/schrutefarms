class ReviewsController < ApplicationController
    before_action :authorize!

    def new
      @review = Review.new
    end

    def create
      @review = Review.new(content: review_params[:content], rating: review_params[:rating], item_id: params[:item_id])
      @review.user = current_user
      if @review.save
        redirect_to item_path(params[:item_id])
      else
        @errors = @review.errors.full_messages
        render :new
      end
    end

    def edit
      @review = Review.find(params[:id])
      @item = Item.find(params[:item_id])
    end

    def update
      @review = Review.find(params[:id])
      @item = Item.find(params[:item_id])
      if @review.update(review_params)
        redirect_to item_path(@review.item_id)
      else
        render "/items/#{review.id}/reviews/#{item.id}/edit"
      end
    end

    def destroy
      @review = Review.find(params[:id])
      @item = Item.find(params[:item_id])
      @review.destroy
      redirect_to item_path(@item)
    end

    private

    def review_params
      params.require(:review).permit(:id, :content, :rating)
    end
end
