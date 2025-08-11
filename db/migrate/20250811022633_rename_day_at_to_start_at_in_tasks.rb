class RenameDayAtToStartAtInTasks < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :day_at, :start_at
  end
end