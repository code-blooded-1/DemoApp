class Article < ApplicationRecord
    validates :title, length: { minimum: 10 }
    validates :description, presence: true
    before_validation :trim_title

    def trim_title
        self.title = title.strip
    end
end
