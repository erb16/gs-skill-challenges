require "c_task_tracker"

RSpec.describe TaskTracker do 
  context "with no entries" do 
    it "returns an empty list" do
      task_tracker = TaskTracker.new
      expect(task_tracker.list).to eq []
    end 
  end

  context "when given a task" do 
    it "adds task to the list" do
      task_tracker = TaskTracker.new
      expect(task_tracker.add_task("drink coffee")).to eq ["drink coffee"]
    end 
  end

 
  context "when given two tasks" do 
    it "returns a list including both tasks" do
      task_tracker = TaskTracker.new
      task_tracker.add_task("drink coffee")
      expect(task_tracker.add_task("watch tv")).to eq ["drink coffee", "watch tv"]
    end 
  end

  context "when given a completed task" do 
    it "returns a list with the completed task removed" do
      task_tracker = TaskTracker.new
      task_tracker.add_task("drink coffee")
      task_tracker.add_task("watch tv")
      expect(task_tracker.mark_complete("drink coffee")).to eq ["watch tv"]
    end 
  end

end
