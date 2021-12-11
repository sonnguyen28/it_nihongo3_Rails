class KanjiReviewsController < ApplicationController
  before_action :set_kanji_review, only: [:show, :edit, :update, :destroy]

  # GET /kanji_reviews
  # GET /kanji_reviews.json
  def index
    @kanji_reviews = KanjiReview.all
  end

  # GET /kanji_reviews/1
  # GET /kanji_reviews/1.json
  def show
  end

  # GET /kanji_reviews/new
  def new
    @kanji_review = KanjiReview.new
  end

  # GET /kanji_reviews/1/edit
  def edit
  end

  # POST /kanji_reviews
  # POST /kanji_reviews.json
  def create
    @kanji_review = KanjiReview.new(kanji_review_params)
    @kanji_review.user_id = current_user.id

    respond_to do |format|
      if @kanji_review.save
        format.html { redirect_to @kanji_review, notice: 'Kanji review was successfully created.' }
        format.json { render :show, status: :created, location: @kanji_review }
      else
        format.html { render :new }
        format.json { render json: @kanji_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kanji_reviews/1
  # PATCH/PUT /kanji_reviews/1.json
  def update
    respond_to do |format|
      if @kanji_review.update(kanji_review_params)
        format.html { redirect_to @kanji_review, notice: 'Kanji review was successfully updated.' }
        format.json { render :show, status: :ok, location: @kanji_review }
      else
        format.html { render :edit }
        format.json { render json: @kanji_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kanji_reviews/1
  # DELETE /kanji_reviews/1.json
  def destroy
    @kanji_review.destroy
    respond_to do |format|
      format.html { redirect_to kanji_reviews_url, notice: 'Kanji review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kanji_review
      @kanji_review = KanjiReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kanji_review_params
      params.require(:kanji_review).permit(:user_id, :kanji_id, :review)
    end
end