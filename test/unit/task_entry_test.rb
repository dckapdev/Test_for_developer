require 'test_helper'

class TaskEntryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "a task entry with task name blank is not valid" do
    actual = TaskEntry.new(:task_name => "", :task_description => "test description", :deadline => 5, :task_status_id => 980190962)
    assert !actual.valid?
  end

  test "a task entry with deadline blank is not valid" do
    actual = TaskEntry.new(:task_name => "", :task_description => "test description", :deadline => "", :task_status_id => 980190962)
    assert !actual.valid?
  end

  test "a task entry with non numeric deadline is not valid" do
    actual = TaskEntry.new(:task_name => "", :task_description => "test description", :deadline => "non_numeric", :task_status_id => 980190962)
    assert !actual.valid?
  end

end
