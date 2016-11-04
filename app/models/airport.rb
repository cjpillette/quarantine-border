class Airport < ApplicationRecord
	has_many :fligths
	has_many :brmcollections
	has_many :freights
end
