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
book_safari_link = "data:section:safari-section"
buy_tickets_link = "data:section:tickets-section"

# Register page
register_section = "id:register-section"  # use with keyword Element Should Be Visible
register_username_input = "id:reg-username"
register_password_input = "id:reg-password"
register_form = "id:register-form"  # use with keyword Submit Form
register_message = "id:register-message"
register_error_short_password = "Password must be at least 8 characters long."
register_error_no_username_password = "Please enter both a username and password."
register_error_username_already_exists = "Username already exists. Please choose another."
register_success_message = "Registration successful! Redirecting to login..."

# Book safaris page
safari_section = "id:safari-section"
safari_date_input = "id:safari-date"
safari_type_select = "id:safari-type"
safari_form = "id:safari-form"
safari_message = "id:safari-message"
safari_error_past_date = "You cannot book a safari for a date in the past."
safari_error_no_ticket = "You must purchase a general admission ticket before booking a safari."
safari_error_no_vip = "Only VIP users can book the selected safari option."
safari_error_weekend_no_vip = "VIP tickets required to book safaris on weekends."
safari_success_alert = "Item added to cart!"

# Login Page
login_section = "id:login-section" 
login_form = "id:login-form"  

login_username_label = "for:login-username"  
login_password_label = "for:login-password"  
login_username_field = "id:login-username"  
login_password_field = "id:login-password"  

login_button = "type:submit"  

login_message = "id:login-message"  

#Buy Tickets
ticket_type = "id:ticket-type"
adult_ticket = "value:Adult"
child_ticket = "value:Child"
senior_ticket = "value:Senior"

ticket_category = "id:ticket-category"
vip_ticket = "value:VIP"
regular_ticket = "value:Regular"

ticket_quantity = "id:ticket-quantity"
enter_ticket_quantity = '1'

add_to_cart = "type:submit"

added_to_cart_alert_message = 'Item added to cart!'

#Cart Page
cart_link = "id:cart-nav"
checkout_button = "id:checkout-button"

checkout_summary_alert_message = 'Checkout Summary:'
