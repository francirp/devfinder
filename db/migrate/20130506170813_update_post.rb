class UpdatePost < ActiveRecord::Migration
  def change
    add_column :posts, :posted_time, :datetime
  end
end
