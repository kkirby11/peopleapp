class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :hair_color
      t.string :eye_color
      t.string :gender
      t.integer :age
      t.boolean :alive

      t.timestamps
    end
  end
end
