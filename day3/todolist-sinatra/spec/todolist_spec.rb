require 'TodoList'
require 'Task'

RSpec.describe TodoList do

	before :all do
    	@first_task = Task.new("Bla bla")
    	@second_task = Task.new("Ble ble")

    	@my_list = TodoList.new

    	@my_list.add_task(@first_task)
		@my_list.add_task(@second_task)
  	end

#	let (:my_list) {TodoList.new}
	describe "#add_task" do
		it "cero tasks in my list" do
			empty_list = TodoList.new
			expect(empty_list.tasks.size).to eq(0)
		end

		it "add two tasks to my list" do
			expect(@my_list.tasks.size).to eq(2)
		end
	end

	describe "#delete_task_by_id" do
		it "remove a element from list by id (1 for first, 2 for second, etc)" do
			to_by_deleted_task = Task.new("Bli bli")
			list_to_delete_task = TodoList.new
			list_to_delete_task.add_task(to_by_deleted_task)

			id_to_delete = to_by_deleted_task.id
			size = list_to_delete_task.tasks.size
			
			list_to_delete_task.delete_task_by_id(id_to_delete)

			expect(size).to be(list_to_delete_task.tasks.size + 1)
		end
	end

	 describe "#find_task_by_id" do
	 	it "gets id and returns selected task" do
	 		id_to_find = @first_task.id
	 		my_task = @my_list.find_task_by_id(@first_task.id)

	 		expect(my_task.id).to be(@first_task.id)
	 	end

	 	it "returns [] if no task found by id" do
	 		expect(@my_list.find_task_by_id(-1)).to eq(nil)
	 	end
	end

	describe "#sort_by_created" do
		it "sort older first (ASC)" do
			expect(@my_list.sort_by_created).to eq([@first_task, @second_task])
		end
		it "sort newer first (DESC)" do
			expect(@my_list.sort_by_created("DESC")).to eq([@second_task, @first_task])
		end
	end
end
