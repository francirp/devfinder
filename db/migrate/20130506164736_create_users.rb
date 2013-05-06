class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :source_url
      t.string :tsl_class
      t.string :email
      t.integer :phone
      t.string :twitter
    end
  end
end
