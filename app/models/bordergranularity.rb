class Bordergranularity < ApplicationRecord
	has_many :brmcollections, foreign_key:"bordergranularity_id"
end
