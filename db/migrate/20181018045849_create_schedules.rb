class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :codschedule, limit: 20
      t.string :dias
      t.string :inicio
      t.string :fin
      t.references :id_subject, foreign_key: true

      t.timestamps
    end
  end
end
