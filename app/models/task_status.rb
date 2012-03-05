class TaskStatus < ActiveRecord::Base
  has_many :task_entries
end
