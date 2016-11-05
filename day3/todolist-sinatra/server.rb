require 'sinatra'
require 'sinatra/reloader'
require 'pry'

require_relative('lib/Task.rb')
require_relative('lib/TodoList.rb')

@@todo_list = TodoList.new
@@todo_list.add_task(Task.new("Walk the dog"))
@@todo_list.add_task(Task.new("Buy the milk"))
@@todo_list.add_task(Task.new("Make my todo list into a web app"))



get '/' do
	redirect to('/tasks')
end

get '/tasks' do
	@tasks_to_display = @@todo_list.tasks
	erb(:task_index)	
end

get '/new_task' do
	erb(:new_task)
end

post '/create_task' do
	@@todo_list.add_task(Task.new(params[:content]))
	redirect to('tasks')
end

# post '/complete/:id' do
# 	redirect to('/complete_task/:id')
# end

get '/complete_task/:id' do
	task_to_complete = @@todo_list.find_task_by_id(params[:id].to_i)
	task_to_complete.complete!
	redirect to('tasks')
end

# post '/delete/:id' do
# 	redirect to ('/delete_task/:id')
# end

get '/delete_task/:id' do
	@@todo_list.delete_task_by_id(params[:id].to_i)
	redirect to('tasks')
end

