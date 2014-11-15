class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
    	t.string :name
    	t.attachment :image
    	# t.lock_version

      	t.timestamps
    end
  end
end
