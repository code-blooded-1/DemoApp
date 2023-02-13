class User < ApplicationRecord
    has_many :articles
    has_one :pan_detail, dependent: :destroy
end
