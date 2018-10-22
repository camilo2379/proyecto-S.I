class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.integer :codigo
      t.string :nombre, limit: 20
      t.string :apellido, limit: 20
      t.integer :documento
      t.float :promedio
      t.references :schedule, foreign_key: true
      t.references :user, foreign_key: true
      t.references :school, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
