class CreateBeacons < ActiveRecord::Migration
  def change
    create_table :beacons do |t|
      t.string :uuid
      t.string :major
      t.string :minor

      t.timestamps
    end
  end
end
