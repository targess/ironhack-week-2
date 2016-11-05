class PasswordChecker

	def initialize
		
	end

	def check_password3(email, password)
		if password.match(/[a-z]/) && password.match(/[A-Z]/)
			true
		else
			false
		end
	end

	def check_password2(email, password)
		if password.match(/\w/) && password.match(/\p{S}/)
			true
		else
			false
		end
	end

	def check_password(email, password)
		if password.size > 7
			true
		elsif  password.size <= 7
			false
		end
	end
end