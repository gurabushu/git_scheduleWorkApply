class AddAllDayToTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :all_day, :boolean
  end
end
