class Currency < ActiveRecord::Base
	
	validates_presence_of :name
	validates_presence_of :iso

end
