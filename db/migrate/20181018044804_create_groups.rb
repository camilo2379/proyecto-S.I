class CreateGroups < ActiveRecord::Migration[5.1]
  def change
    create_table :groups do |t|
      t.string :codgroup, limit: 20
      t.references :id_subject, foreign_key: true
      t.references :id_teacher, foreign_key: true
      t.references :id_student, foreign_key: true

      t.timestamps
    end
  end
end
