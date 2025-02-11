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
book_safaris_link = "data:section:safari-section"
buy_tickets_link = "data:section:tickets-section"
cart_link = "data:section:cart-section"

add_to_cart_success_alert = "Item added to cart!"
checkout_success_alert = "Checkout Summary:"

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
safari_date_past = "2021-01-01"
safari_date_workday = "2100-01-01"
safari_date_weekend = "2100-01-02"

safari_type_select = "id:safari-type"
safari_regular_option1 = "Herbivore Tour"
safari_regular_option2 = "T-Rex Rumble"
safari_vip_option1 = "Herbivore Tour with Feeding"
safari_feeding_option = safari_vip_option1
safari_vip_option2 = "T-Rex Rumble eXtreme Thrill Pack"

safari_form = "id:safari-form"
safari_message = "id:safari-message"
safari_error_past_date = "You cannot book a safari for a date in the past."
safari_error_no_ticket = "You must purchase a general admission ticket before booking a safari."
safari_error_no_vip = "Only VIP users can book the selected safari option."
safari_error_weekend_no_vip = "VIP tickets required to book safaris on weekends."

# Login Page
login_section = "id:login-section"
login_username_input = "id:login-username"
login_password_input = "id:login-password"
login_form = "id:login-form"
login_message = "id:login-message"
logout_link = "id:logout-link"

# Buy Tickets
tickets_section = "id:tickets-section"
tickets_type_select = "id:ticket-type"
tickets_adult_ticket = "Adult"
tickets_child_ticket = "Child"
tickets_senior_ticket = "Senior"
tickets_category_select = "id:ticket-category"
tickets_vip_ticket = "VIP"
tickets_regular_ticket = "Regular"
tickets_ticket_quantity = "id:ticket-quantity"
tickets_form = "id:ticket-form"

# Cart Page
cart_section = "id:cart-section"
cart_items = "css:#cart-details ul"
cart_checkout_button = "id:checkout-button"
