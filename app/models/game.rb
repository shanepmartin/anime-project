class Game < ApplicationRecord
    belongs_to :user
    has_many :cartoons, through: :user
    has_many :quotes, through: :user
end
