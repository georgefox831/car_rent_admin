class Client < ApplicationRecord
    belongs_to :rent, optional: true
end
