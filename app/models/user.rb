class User < ApplicationRecord
    has_secure_password
    has_many :articles
    has_one :pan_detail, dependent: :destroy
end
