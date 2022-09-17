class Quote < ApplicationRecord
    belongs_to :user
    has_many :cartoons, through: :user
    has_many :games, through: :user
end
