class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.integer :codigo
      t.string :nombre, limit: 20
      t.string :apellido, limit: 20
      t.references :school, foreign_key: true
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
