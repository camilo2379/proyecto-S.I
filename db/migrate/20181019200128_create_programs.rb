class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.integer :codigo
      t.string :nombre, limit: 25
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
