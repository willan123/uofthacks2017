class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.integer :steps
      t.boolean :meditation
      t.integer :sleep
      t.boolean :achievement
      t.boolean :enjoyment
      t.date    :date
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
