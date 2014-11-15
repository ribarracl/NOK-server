class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.integer :fid, :limit => 8
    	t.string :name
		t.timestamps
    end
  end
end
