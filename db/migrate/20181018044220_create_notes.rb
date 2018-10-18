class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :note
      t.references :id_student, foreign_key: true
      t.references :id_group, foreign_key: true
      t.references :id_subject, foreign_key: true

      t.timestamps
    end
  end
end
