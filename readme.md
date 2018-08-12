# PHP MVC Quiz App

A Simple php mvc quiz application

# To run locally

 - Git clone this repository
 - Change directory into root of cloned folder
 - Enter `composer install` (assuming you have `composer` and its related packages installed and or configured)
 - Change database connections in  `app/config/config.php`  to your local connection details (For production , comment error 
   reporting, feel free to also change port number)
 - Database dump sql file is in  `app/_install` (Feel free to run the other sql scripts individually for fresh database)
 - Run `php -S localhost:3000` (change this port to correspond to what is in config)
 - Open localhost:3000 or 127.0.0.1:3000 to view app
 
# Screenshots
#### Home Page
![Image](screenshots/1.png?raw=true "HomePage")

#### Questions Page
![Image](screenshots/2.png?raw=true "Questions Page")

#### Passed
![Image](screenshots/3.png?raw=true "Passed")

#### Failed
![Image](screenshots/4.png?raw=true "Failed")