class CreateCredits < ActiveRecord::Migration[5.1]
  def change
    create_table :credits do |t|
      t.integer :numero, limit: 2

      t.timestamps
    end
  end
end
