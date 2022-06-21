class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.string :note
      t.time :total_time

      t.timestamps
    end
  end
end
