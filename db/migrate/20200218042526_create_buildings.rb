class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :prefecture
      t.string :city
      t.string :number
      t.string :year
      t.integer :age
      t.string :image_top
      t.timestamps
    end
  end
end
