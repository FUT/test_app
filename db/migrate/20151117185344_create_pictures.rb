class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :owner_type
      t.integer :owner_id
      t.string :url

      t.timestamps null: false
    end
  end
end
