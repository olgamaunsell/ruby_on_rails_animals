class AddLightSaberToAnimal < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :lightsaber, :string
  end
end
