class Airport < ApplicationRecord
	has_many :fligths
	has_many :brmcollections
end
