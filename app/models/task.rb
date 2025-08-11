class Task < ApplicationRecord
  belongs_to :user, foreign_key: "user_task_id", optional:true

  validates :task_name, presence: true
  validates :task_description, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true

end
