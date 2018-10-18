class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :codsubject, limit: 20
      t.string :nombre
      t.references :id_credit, foreign_key: true
      t.references :id_program, foreign_key: true

      t.timestamps
    end
  end
end
