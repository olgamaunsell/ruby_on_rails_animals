class RemoveLightSaberFromAnimal < ActiveRecord::Migration[5.1]
  def change
    remove_column :animals, :lightsaber
  end
end
