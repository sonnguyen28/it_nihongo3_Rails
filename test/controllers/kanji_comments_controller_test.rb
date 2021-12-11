require 'test_helper'

class KanjiCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kanji_comment = kanji_comments(:one)
  end

  test "should get index" do
    get kanji_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_kanji_comment_url
    assert_response :success
  end

  test "should create kanji_comment" do
    assert_difference('KanjiComment.count') do
      post kanji_comments_url, params: { kanji_comment: { kanji_id: @kanji_comment.kanji_id, comment: @kanji_comment.comment, user_id: @kanji_comment.user_id } }
    end

    assert_redirected_to kanji_comment_url(KanjiComment.last)
  end

  test "should show kanji_comment" do
    get kanji_comment_url(@kanji_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_kanji_comment_url(@kanji_comment)
    assert_response :success
  end

  test "should update kanji_comment" do
    patch kanji_comment_url(@kanji_comment), params: { kanji_comment: { kanji_id: @kanji_comment.kanji_id, comment: @kanji_comment.comment, user_id: @kanji_comment.user_id } }
    assert_redirected_to kanji_comment_url(@kanji_comment)
  endz

  test "should destroy kanji_comment" do
    assert_difference('KanjiComment.count', -1) do
      delete kanji_comment_url(@kanji_comment)
    end

    assert_redirected_to kanji_comments_url
  end
end