class TodoList
    attr_reader :tasks
    def initialize
        @tasks = []
    end

    def add_task(task)
    	@tasks.push(task)
    end

    def delete_task_by_id(id)
    	@tasks.delete_if {|task| task.id == id}
    end

    def find_task_by_id(id)
        selected_tasks = @tasks.select { |task| task.id == id}
        return selected_tasks.first 
    end

    def sort_by_created(default = "ASC")
        if default == "ASC"
            @tasks.sort { | task1, task2 | task1.id <=> task2.id }
        elsif default == "DESC"   
            @tasks.sort { | task1, task2 | task2.id <=> task1.id }
        end
    end
end