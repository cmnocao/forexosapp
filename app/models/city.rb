class City < ActiveRecord::Base

	belongs_to :state
	belongs_to :country

	validates_presence_of :name
	validates_presence_of :state_id


end
