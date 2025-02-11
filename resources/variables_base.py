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
