class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.datetime :started
      t.datetime :stopped
      t.datetime :total
      t.timestamps
    end
  end
end
