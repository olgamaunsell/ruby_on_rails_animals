class AddDietToAnimal < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :diet, :string
  end
end
