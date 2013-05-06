class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :neighborhood
      t.string :street
      t.string :city
      t.string :state
    end
  end
end
