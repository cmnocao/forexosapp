class Country < ActiveRecord::Base

	has_many :states

	validates_presence_of :name
	validates_presence_of :iso2
end
