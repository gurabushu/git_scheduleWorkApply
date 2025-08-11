class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.datetime :day_at
      t.datetime :end_at
      t.boolean :status
      t.string :task_name
      t.text :task_description
      t.integer :user_task_id

      t.timestamps
    end
  end
end
