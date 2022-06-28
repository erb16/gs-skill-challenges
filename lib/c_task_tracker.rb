class TaskTracker
  def initialize
    @todotasks = []
  end

  def add_task(task)
    @todotasks = @todotasks << task
    return list
  end

  def mark_complete(task)
   @todotasks.delete(task)
   return list
  
  end

  def list
    @todotasks
  end


  
end
