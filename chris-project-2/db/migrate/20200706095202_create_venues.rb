class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.integer :capacity
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
