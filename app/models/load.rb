class Load < ApplicationRecord
    has_one_attached :rate_confirmation
    belongs_to :kadere, optional:true
end
