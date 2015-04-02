class Currency < ActiveRecord::Base
	has_paper_trail
	validates_presence_of :name
	validates_presence_of :iso

end
