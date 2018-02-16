class User < ApplicationRecord
    has_many :lives
    validates :uuid, :live_id, presence: true
end
