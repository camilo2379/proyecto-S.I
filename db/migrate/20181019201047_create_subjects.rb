class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.integer :codigo
      t.string :nombre, limit: 25
      t.references :credit, foreign_key: true
      t.references :note, foreign_key: true
      t.references :program, foreign_key: true
      t.references :schedule, foreign_key: true

      t.timestamps
    end
  end
end
