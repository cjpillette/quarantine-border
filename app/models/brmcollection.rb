class Brmcollection < ApplicationRecord
	belongs_to :airport, foreign_key: "airport_id" 
	belongs_to :bordergranularity, foreign_key: "bordergranularity_id"
	
end
