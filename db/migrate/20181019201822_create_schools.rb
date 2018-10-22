class CreateSchools < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :nombre, limit: 20

      t.timestamps
    end
  end
end
