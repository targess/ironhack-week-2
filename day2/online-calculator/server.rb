require "sinatra"
require_relative "lib/calculator"
require_relative "lib/store"

enable(:sessions)

get "/" do
	erb(:index)
end

get "/unified" do
	Store
	erb(:unified)
end

get "/add" do
  erb(:add)
end

get "/substract" do
  erb(:substract)
end

get "/divide" do
  erb(:divide)
end

get "/multiply" do
  erb(:multiply)
end

post "/calculator_result" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  
  case params[:operation]
  when "addition"
  	result = Calculator.add(first, second)
  when "substract"
  	result = Calculator.substract(first, second)
  when "divide"
  	result = Calculator.divide(first, second)
  when "multiply"
  	result = Calculator.multiply(first, second)
  end

  Store.put(result)
  "#{first} #{params[:operation]} #{second} = #{result}"
end

post "/calculate_multiply" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.multiply(first, second)
  "#{first} * #{second} = #{result}"
end

post "/calculate_divide" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.divide(first, second)
  "#{first} / #{second} = #{result}"
end

post "/calculate_add" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.add(first, second)
  "#{first} + #{second} = #{result}"
end

post "/calculate_substract" do
  first = params[:first_number].to_f
  second = params[:second_number].to_f
  result = Calculator.substract(first, second)
  "#{first} - #{second} = #{result}"
end