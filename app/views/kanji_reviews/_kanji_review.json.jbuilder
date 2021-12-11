json.extract! kanji_review, :id, :user_id, :kanji_id, :review, :created_at, :updated_at
json.url kanji_review_url(kanji_review, format: :json)