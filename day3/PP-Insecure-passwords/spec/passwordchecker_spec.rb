require_relative '../lib/passwordchecker.rb'

RSpec.describe PasswordChecker do 
	describe "#check_password" do
		it "has more than 7 characters" do
			@password = PasswordChecker.new.check_password("latoscana@gmail.com", "12345678")
			expect(@password).to eq(true)
		end
		it "has less than 8 characters" do
			@password = PasswordChecker.new.check_password("latoscana@gmail.com", "1234567")
			expect(@password).to eq(false)
		end
		it "has at least 1 letter, 1 number and 1 symbol" do
			@password = PasswordChecker.new.check_password2("latoscana@gmail.com", "a1€")
			expect(@password).to eq(true)
		end
		it "has not least 1 letter, 1 number and 1 symbol" do
			@password = PasswordChecker.new.check_password2("latoscana@gmail.com", "a1")
			expect(@password).to eq(false)
		end
		it "has at least 1 uppercase and 1 lowercase letter" do
			@password = PasswordChecker.new.check_password3("latoscana@gmail.com", "aA")
			expect(@password).to eq(true)
		end
		it "has not at least 1 uppercase and 1 lowercase letter" do
			@password = PasswordChecker.new.check_password3("latoscana@gmail.com", "12345678")
			expect(@password).to eq(false)
		end
		# it "has not the name or domain of the email"
	end

end