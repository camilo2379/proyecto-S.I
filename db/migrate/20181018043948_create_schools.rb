class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :codschool, limit: 20
      t.string :nombre
      t.references :id_teacher, foreign_key: true
      t.references :id_subject, foreign_key: true

      t.timestamps
    end
  end
end
