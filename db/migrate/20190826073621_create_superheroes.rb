class CreateSuperheroes < ActiveRecord::Migration[5.2]
  def change
    create_table :superheroes do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.boolean :availability
      t.references :user, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
