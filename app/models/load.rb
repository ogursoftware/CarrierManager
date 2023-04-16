class Load < ApplicationRecord
    has_one_attached :rate_confirmation
    belongs_to :kadere, optional:true
   enum status: {preplan:0,dispatched:1,at_shipper:2,is_loaded:3,at_receiver:4,empty:5 } 
   # enum status: [:preplan,:dispatched,:at_shipper,:is_loaded,:at_receiver,:empty] 

end
