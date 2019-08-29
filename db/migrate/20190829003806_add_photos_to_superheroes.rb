class AddPhotosToSuperheroes < ActiveRecord::Migration[5.2]
  def change
    add_column :superheroes, :photo, :string
  end
end
