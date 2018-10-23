class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :nombre, limit: 20
      t.string :apellido, limit: 20
      t.integer :documento, limit: 15
      t.integer :tipo_estudiante, limit: 1
      t.decimal :promedio
      t.references :Schedule, foreign_key: true
      t.references :User, foreign_key: true
      t.references :School, foreign_key: true
      t.references :Semester, foreign_key: true

      t.timestamps
    end
  end
end
