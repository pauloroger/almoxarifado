module LoginMacros
	def login(login, pass)
		visit new_session_path
		fill_in 'login', with: login
		fill_in 'password', with: pass
		click_button 'Entrar'
		sleep 1
	end

	def logout
		click_link 'Sair'
	end
end