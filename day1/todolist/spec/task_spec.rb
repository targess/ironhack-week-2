require 'Task'

RSpec.describe Task do

	let (:my_task) {Task.new("Bla bla")}
	describe "#complete?" do
		it "isn't completed return false" do
			expect(my_task.complete?).to eq(false)
		end
		it "when task is completed return true" do
			my_task.complete!
			expect(my_task.complete?).to eq(true)
		end
	end

	describe "#complete!" do
		it "complete a Task" do
			my_task.complete!
			expect(my_task.complete!).to eq(true)
		end
	end

	describe "#make_incomplete!" do
		it "make a Task incomplete" do
			my_task.make_incomplete!
			expect(my_task.complete?).to eq(false)
		end
	end

	describe "#update_content!" do
		it "replace our task text" do
			my_task.update_content!("Ble Ble")
			expect(my_task.content).to eq("Ble Ble")
		end
	end
end