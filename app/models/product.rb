class Product < ApplicationRecord
    validates :name, length: { minimum: 10 }
    validates :description, presence: true
    before_validation :trim_name

    def trim_name
        self.name = name.strip
    end
end
