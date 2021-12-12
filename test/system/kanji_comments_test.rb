require "application_system_test_case"
class KanjiCommentsTest < ApplicationSystemTestCase
    setup do
        @kanji_comment = kanji_comments(:one)
    end
    
    test "visiting the index" do
        visit kanji_comments_url
        assert_selector "h1", text: "Kanji Comments"
    end
    
    test "creating a Kanji comment" do
        visit kanji_comments_url
        click_on "New Kanji Comment"

        fill_in "Kanji", with: @kanji_comment.kanji_id
        fill_in "Comment", with: @kanji_comment.comment
        fill_in "User", with: @kanji_comment.user_id
        click_on "Create Kanji comment"

        assert_text "Kanji comment was successfully created"
        click_on "Back"
    end
    
    test "updating a Kanji comment" do
        visit kanji_comments_url
        click_on "Edit", match: :first

        fill_in "Kanji", with: @kanji_comment.kanji_id
        fill_in "Kanji", with: @kanji_comment.comment
        fill_in "User", with: @kanji_comment.user_id
        click_on "Update Kanji comment"
    
        assert_text "Kanji comment was successfully updated"
        click_on "Back"
    end
    test "destroying a Kanji comment" do
        visit kanji_comments_url
        page.accept_confirm do
            click_on "Destroy", match: :first
        end
        
        assert_text "Kanji comment was successfully destroyed"
    end
end
    
    
    
 
    
 
     
