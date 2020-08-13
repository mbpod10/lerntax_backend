class Information < ApplicationRecord
    belongs_to :user
    validates_uniqueness_of :user_id 
    has_many :tax_information
end


#rails g scaffold tax_information w2_wages:integer capital_gains:integer unemployment_insurance:integer self_employment:integer