class Live < ApplicationRecord
    belongs_to :user
    validates :name, :location, :tag, presence: true
end
