class Car < ApplicationRecord
    belongs_to :rent, optional: true
end
