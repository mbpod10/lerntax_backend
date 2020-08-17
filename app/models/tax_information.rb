class TaxInformation < ApplicationRecord
    belongs_to :information
    validates_uniqueness_of :information_id 
end
