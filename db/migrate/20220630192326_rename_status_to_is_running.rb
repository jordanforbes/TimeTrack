class RenameStatusToIsRunning < ActiveRecord::Migration[7.0]
  def change
    rename_column :records, :status, :is_running  
    change_column_default :records, :is_running, true
  end
end
