class CreateBeaconStores < ActiveRecord::Migration
  def change
    create_table :beacon_stores do |t|
    	t.integer :beacon_id
    	t.integer :store_id
    	t.boolean :active
      	t.timestamps

      	t.index :beacon_id
    	t.index :store_id
    end
  end
end
