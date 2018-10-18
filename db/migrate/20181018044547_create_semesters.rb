class CreateSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :semesters do |t|
      t.integer :numero
      t.date :fecha_inicio

      t.timestamps
    end
  end
end
