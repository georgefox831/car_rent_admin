class Rent < ApplicationRecord
    has_one :car
    has_one :client
    belongs_to :claim, optional: true
end
