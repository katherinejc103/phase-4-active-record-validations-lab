class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, acceptance: { accept: ["Fiction", "Non-Fiction"] } 
    validate :clickbait

    def clickbait
         title.match?("True Facts")
    end 
end
