class Task
    attr_reader :content, :id
    @@current_id = 1

    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @completed = false
        @created_at = Date.today
        @updated_at = nil
    end

    def complete?
    	@completed
    end

    def complete!
    	@completed = true
    end

    def make_incomplete!
    	@completed = false
    end

    def update_content!(string)
    	@content = string
    	@updated_at = Date.today
    end
end