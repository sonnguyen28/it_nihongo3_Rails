require 'test_helper'

class KanjiReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kanji_review = kanji_reviews(:one)
  end

  test "should get index" do
    get kanji_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_kanji_review_url
    assert_response :success
  end

  test "should create kanji_review" do
    assert_difference('KanjiReview.count') do
      post kanji_reviews_url, params: { kanji_review: { kanji_id: @kanji_review.kanji_id, review: @kanji_review.review, user_id: @kanji_review.user_id } }
    end

    assert_redirected_to kanji_review_url(KanjiReview.last)
  end

  test "should show kanji_review" do
    get kanji_review_url(@kanji_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_kanji_review_url(@kanji_review)
    assert_response :success
  end

  test "should update kanji_review" do
    patch kanji_review_url(@kanji_review), params: { kanji_review: { kanji_id: @kanji_review.kanji_id, review: @kanji_review.review, user_id: @kanji_review.user_id } }
    assert_redirected_to kanji_review_url(@kanji_review)
  end

  test "should destroy kanji_review" do
    assert_difference('KanjiReview.count', -1) do
      delete kanji_review_url(@kanji_review)
    end

    assert_redirected_to kanji_reviews_url
  end
end