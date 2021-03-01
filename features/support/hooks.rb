require "base64"

Before do
  Capybara.page.current_window.resize_to(1360, 1000)
  @login = LoginPage.new
  @register = RegisterPage.new
  @employees = EmployeesPage.new
  @new_employees = NewEmployeesPage.new
  @delete_employees = DeleteEmployeesPage.new
  @edit_employees = EditEmployeesPage.new
  
  #pages_api
  @new_user_api = NewUserApi.new
  @update_user_api = UpdateUserApi.new
  @consult_user_api = ConsultUserApi.new
end