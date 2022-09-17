class User < ApplicationRecord
    has_many :cartoons
    has_many :games
    has_many :quotes
end