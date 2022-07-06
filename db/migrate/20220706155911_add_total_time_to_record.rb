class AddTotalTimeToRecord < ActiveRecord::Migration[7.0]
  def change
    add_column :records, :total_time, :datetime
  end
end
