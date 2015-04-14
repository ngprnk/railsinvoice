class Particular < ActiveRecord::Base
	validates :itemname ,:quantity,:rate,presence:true
	
end
