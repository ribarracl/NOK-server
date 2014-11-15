class CreateStoreAds < ActiveRecord::Migration
  def change
    create_table :store_ads do |t|

    	t.references :store
    	t.string :name
    	t.text :description
      t.date :expires
    	t.attachment :image
      t.boolean :active
    	
      t.timestamps
      t.index :store_id
    end
  end
end
