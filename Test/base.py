import os

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
book_safari = "data:section:safari-section"