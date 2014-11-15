class Beacon < ActiveRecord::Base

	has_many :beacon_stores
	has_one :store, through: :beacon_stores #,  -> { where "active = 1" }

	def active_store
		#beacon_stores = self.beacon_stores

		return nil if beacon_stores.empty?

		beacon_store = beacon_stores.where(:active => true).first
		return beacon_store && beacon_store.store
	end

end
