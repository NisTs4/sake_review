class SakesController < ApplicationController
  before_action :set_sake, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @sakes = Sake.all
  end

  def show
    @reviews = Review.where(sake_id: @sake.id).order("created_at DESC")

    if @sake.blank?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:rating).round(2)
    end
  end

  def new
    @sake = current_user.sakes.build 
  end

  def edit
  end

  def create
    @sake = current_user.sakes.build(sake_params)

    respond_to do |format|
      if @sake.save
        format.html { redirect_to @sake, notice: 'Sake was successfully created.' }
        format.json { render :show, status: :created, location: @sake }
      else
        format.html { render :new }
        format.json { render json: @sake.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sake.update(sake_params)
        format.html { redirect_to @sake, notice: 'Sake was successfully updated.' }
        format.json { render :show, status: :ok, location: @sake }
      else
        format.html { render :edit }
        format.json { render json: @sake.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sake.destroy
    respond_to do |format|
      format.html { redirect_to sakes_url, notice: 'Sake was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_sake
      @sake = Sake.find(params[:id])
    end

    def sake_params
      params.require(:sake).permit(:name, :catchcopy, :home, :classification, :alcohol, :ingredient, :rice, :seimaibuai, :description, :size, :maker, :rating, :image)
    end
end
