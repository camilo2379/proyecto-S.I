class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.string :dia
      t.time :hora_inicio
      t.time :hora_fin

      t.timestamps
    end
  end
end
