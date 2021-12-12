class Kanji < ApplicationRecord
    has_one_attached :image
    # def self.search(term)
    #     if term
    #         where('kanji LIKE ?', "%#{term}%")
    #     else
    #         all
    #     end
    # end
end
