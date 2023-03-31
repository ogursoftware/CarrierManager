class Kadere < ApplicationRecord
    belongs_to :carrier,optional: true
    has_many :loads

end