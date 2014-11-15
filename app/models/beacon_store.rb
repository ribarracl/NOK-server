class BeaconStore < ActiveRecord::Base

    belongs_to :beacon
	belongs_to :store
	
end
