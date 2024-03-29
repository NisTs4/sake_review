class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_sake
  before_action :authenticate_user!

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.sake_id = @sake.id

    if @review.save
      redirect_to @sake
    else
      render :new 
    end
  end

  def update
    respond_to do |format|
      if @review.update(review_params)
	format.html { redirect_to @review, notice: 'Review was successfully updated.' }
	format.json { render :show, status: :ok, location: @review }
      else
	format.html { render :edit }
	format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private
  def set_review
    @review = Review.find(params[:id])
  end

  def set_sake
    @sake = Sake.find(params[:sake_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
