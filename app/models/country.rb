class Country < ActiveRecord::Base

	has_many :states
	has_many :customers
	has_many :cities

	validates_presence_of :name
	validates_presence_of :iso2
	validates_presence_of :iso3

end
