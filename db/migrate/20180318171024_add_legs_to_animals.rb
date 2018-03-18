class AddLegsToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_column :animals, :legs, :integer
  end
end
