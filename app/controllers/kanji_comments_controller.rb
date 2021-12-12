class KanjiCommentsController < ApplicationController
  before_action :set_kanji_comment, only: %i[ show edit update destroy ]

  # GET /kanji_comments or /kanji_comments.json
  def index
    @kanji_comments = KanjiComment.all
  end

  # GET /kanji_comments/1
  # GET /kanji_comments/1.json
  def show
  end

  # GET /kanji_comments/new
  def new
    @kanji_comment = KanjiComment.new
  end

  # GET /kanji_comments/1/edit
  def edit
  end

  # POST /kanji_comments or /kanji_comments.json
  def create
    @kanji_comment = KanjiComment.new(kanji_comment_params)
    @kanji_comment.user_id = current_user.id
    
    respond_to do |format|
     if @kanji_comment.save
         url = "/kanjis/" + @kanji_comment.kanji_id.to_s
        format.html { redirect_to url, notice: "Kanji comment was successfully created." }
        format.json { render :show, status: :created, location: @kanji_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kanji_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kanji_comments/1 or /kanji_comments/1.json
  def update
    respond_to do |format|
      if @kanji_comment.update(kanji_comment_params)
        format.html { redirect_to @kanji_comment, notice: 'Kanji comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @kanji_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kanji_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kanji_comments/1 or /kanji_comments/1.json
  def destroy
    @kanji_comment.destroy
    respond_to do |format|
      format.html { redirect_to kanji_comments_url, notice: 'Kanji comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kanji_comment
      @kanji_comment = KanjiComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kanji_comment_params
      params.require(:kanji_comment).permit(:user_id, :kanji_id, :comment)
    end
end