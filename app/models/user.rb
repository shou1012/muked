class User < ApplicationRecord
    has_many :lives, dependent :destroy
    validates :uuid, :live_id, presence: true
end
