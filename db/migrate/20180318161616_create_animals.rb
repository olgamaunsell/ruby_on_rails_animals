class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.text :name

      t.timestamps
    end
  end
end
