module ConfirmMacro
	def confirm
		sleep 1
		page.driver.browser.switch_to.alert.accept
	end
end