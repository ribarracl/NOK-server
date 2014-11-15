class Store < ActiveRecord::Base

	has_attached_file :image, :styles => { :medium => "320x320", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/


  	has_many :beacon_stores, -> { where "active = 1" }
  	has_many :beacons, :through => :beacon_stores

  	has_many :ads, class_name: 'StoreAd'

  	def set_active(beacon)
  		puts beacon.inspect
  		puts 'oli'
  	end

  	def active_ad
  		self.ads.where(active: true).first
  	end

end
