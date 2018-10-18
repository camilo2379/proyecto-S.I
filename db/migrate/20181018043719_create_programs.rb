class CreatePrograms < ActiveRecord::Migration[5.1]
  def change
    create_table :programs do |t|
      t.string :codprogram, limit: 20
      t.string :nombre
      t.references :id_school, foreign_key: true
      t.references :id_teacher, foreign_key: true

      t.timestamps
    end
  end
end
