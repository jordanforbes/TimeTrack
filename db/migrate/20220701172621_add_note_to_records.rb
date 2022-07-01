class AddNoteToRecords < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :note, :string
  end
end
