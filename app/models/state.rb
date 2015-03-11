class State < ActiveRecord::Base
	validates_presence_of :name
	validates_presence_of :country_id
end
