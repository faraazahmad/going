class Event < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5}
    validates :description, presence: true
    validates :starts, presence: true
end
