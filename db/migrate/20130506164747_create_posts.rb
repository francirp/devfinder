class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :status
      t.string :duration
      t.string :description
    end
  end
end
