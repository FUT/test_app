class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :name2
      t.string :photo

      t.timestamps null: false

      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
