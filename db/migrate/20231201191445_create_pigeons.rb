class CreatePigeons < ActiveRecord::Migration[7.0]
  def change
    create_table :pigeons do |t|
      t.string :name
      t.integer :age
      t.text :enjoys
      t.text :image

      t.timestamps
    end
  end
end
