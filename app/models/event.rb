class Event < ApplicationRecord

 validates :start_date,
    presence: true
    validates :duration,
    presence: true,
    numericality: { greater_than: 0 }
    validates :title,
    presence: true
    validates_length_of :title, minimum: 5, maximum: 140
    validates :description,
    presence: true
    validates_length_of :description, minimum: 20, maximum: 1000
    validates :price,
    presence: true,
    numericality: { greater_than_or_equal_to: 1, lesser_than_or_equal_to: 1000 }
    validates :location,
    presence: true
    has_many :attendances
    has_many :users, through: :attendances

end
