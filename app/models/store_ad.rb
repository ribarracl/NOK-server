class StoreAd < ActiveRecord::Base

	belongs_to :store

	has_attached_file :image, :styles => { :medium => "320x320", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
