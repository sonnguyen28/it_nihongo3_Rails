class Kanji < ApplicationRecord
    has_one_attached :image
    has_many :kanji_comment, -> {order "created_at DESC"}
end