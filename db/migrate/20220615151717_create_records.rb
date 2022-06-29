class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.boolean :status, default: false
      t.timestamp :created_at, :updated_at
    end
  end
end
