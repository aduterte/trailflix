class Movie < ApplicationRecord
    serialize :genres, Array
    has_many :favorites
    has_many :users, through: :favorites
end
