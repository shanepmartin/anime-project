class Cartoon < ApplicationRecord
    belongs_to :user
    has_many :games, through: :user
    has_many :quotes, through: :user
end
