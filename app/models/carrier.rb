class Carrier < ApplicationRecord
    has_many :kaderes, dependent: :destroy
       
end
