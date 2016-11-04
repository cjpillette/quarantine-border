class Freight < ApplicationRecord
	belongs_to :brmtype
	belongs_to :airport
end
