# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

beacon_8571 = Beacon.create :uuid =>  'B9407F30-F5F8-466E-AFF9-25556B57FE6D', :major => 8571,  :minor => 36436
beacon_12666 = Beacon.create :uuid => 'B9407F30-F5F8-466E-AFF9-25556B57FE6D', :major => 12666, :minor => 30631
beacon_62164 = Beacon.create :uuid => 'B9407F30-F5F8-466E-AFF9-25556B57FE6D', :major => 62164, :minor => 9390
beacon_36089 = Beacon.create :uuid => 'B9407F30-F5F8-466E-AFF9-25556B57FE6D', :major => 36089, :minor => 52615


# stores
store_starbucks = Store.create :name => "Starbucks", :image => File.new("#{Rails.root}/public/images/starbucks_logo.jpg")
store_unimarc = Store.create :name => "Unimarc", :image => File.new("#{Rails.root}/public/images/unimark_logo.jpg")
store_saville = Store.create :name => "Saville Row", :image => File.new("#{Rails.root}/public/images/savillerow_logo.jpg")
store_salco = Store.create :name => "Salcobrand", :image => File.new("#{Rails.root}/public/images/salcobrand_logo.jpg")


#Store.create :name => "Therapy"
#Store.create :name => "Mrs Stone"
#Store.create :name => "Disworld"
#Store.create :name => "Singolare Women"
#Store.create :name => "Pillín"
#Store.create :name => "La Fête"
#Store.create :name => "Licantai"
#Store.create :name => "Balance 360º"

#store_salco = Store.where(name: 'Salcobrand').first

# beacon stores
BeaconStore.create :beacon => beacon_8571,  :store => store_starbucks, :active => true
BeaconStore.create :beacon => beacon_12666, :store => store_unimarc,   :active => true
BeaconStore.create :beacon => beacon_62164, :store => store_saville,   :active => true
BeaconStore.create :beacon => beacon_36089, :store => store_salco,     :active => true

# store ads
StoreAd.create :name => 'Re-energízate', 
		:description => "De 1pm a 5pm nuestros refreshers sólo custan la mitad.\nSólo aplica en tamaño Grande y Venti", 
		:store => store_starbucks,
		:image => File.new("#{Rails.root}/public/images/starbucks_cupon.jpg"),
		:expires => Time.now + 7.days,
		:active => true

StoreAd.create :name => 'El gran 3x2', 
		:description => "El Gran 3x2, la magia del ahorro.\nDonde llevas 3 productos y pagas 2.", 
		:store => store_unimarc,
		:image => File.new("#{Rails.root}/public/images/unimark_cupon.jpg"),
		:expires => Time.now + 12.days,
		:active => true

StoreAd.create :name => '20% dscto.', 
		:description => 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.', 
		:store => store_saville,
		:image => File.new("#{Rails.root}/public/images/savillerow_cupon.jpg"),
		:expires => Time.now + 9.days,
		:active => true

#StoreAd.create :name => '15% dscto.', 
#		:description => "De 1pm a 5pm nuestros refreshers sólo custan la mitad.\nSólo aplica en tamaño Grande y Venti", 
#		:store => store_starbucks
#		:image => File.new("#{Rails.root}/public/images/starbucks_cupon.jpg")						

# users
#1000.times.each do |i|
1000.times.each do |i|

	from = 1.month.ago
	to = Time.now
	created_at = Time.at(rand * (to.to_f - from.to_f) + from.to_f)

	fid = 10*8 + rand(10**9)
	User.create :fid => fid, :created_at => created_at
end
