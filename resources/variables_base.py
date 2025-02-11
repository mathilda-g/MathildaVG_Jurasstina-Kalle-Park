import os
BROWSER = "chrome"
current_directory = os.getcwd().replace('\\', '/')
url = f"file:///{current_directory}/jurap.html"

username_with_numbers = '1234'
username_with_letters = 'StinaKalle'
username_with_special_characters = '!"%&åÄö'
password_short = '1'
password_long = 'p4$$w0rd'

register_link = "data:section:register-section"
login_link = "data:section:login-section"
buy_tickets_link = "data:section:tickets-section"
book_safari_link = "data:section:safari-section"

# register page
register_section = "id:register-section" # use with keyword Element Should Be Visible
register_username_input = "id:reg-username"
register_password_input = "id:reg-password"
register_form = "id:register-form" # use with keyword Submit Form
register_message = "id:register-message"
register_error_short_password = "Password must be at least 8 characters long."
register_error_no_username_password = "Please enter both a username and password."
register_error_username_already_exists = "Username already exists. Please choose another."
register_success_message = "Registration successful! Redirecting to login..."