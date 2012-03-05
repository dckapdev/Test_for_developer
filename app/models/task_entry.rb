class TaskEntry < ActiveRecord::Base
  belongs_to :task_status

  validates_presence_of	:task_name, :message => "can't be blank"  
  validates_presence_of	:deadline, :message => "can't be blank"
  validates_numericality_of :deadline, :message => "Please enter deadline in numbers"

  def self.pending_tasks
    pt = []
    TaskEntry.all.each do |te|
      pt << te if Time.now > te.created_at + te.deadline.to_i*60.minutes
    end
    return pt
  end
  
end
