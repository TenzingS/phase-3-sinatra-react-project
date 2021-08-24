class CreateStock < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :price
      t.integer :user_id
    end
  end
end
