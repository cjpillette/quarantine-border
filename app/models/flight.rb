class Flight < ApplicationRecord
	belongs_to :airport
	belongs_to :inspectionregime

end
