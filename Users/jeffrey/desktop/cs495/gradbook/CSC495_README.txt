FYI here is a good guide to step through some simple concepts of rails and ruby

http://guides.rubyonrails.org/getting_started.html

This is the config I used for the DB:

	user is root
	PW is csc495
	Change the database password for root if you've already created a mySQL database with a different password.
	The SQL for changing the users password (if you're logged in as root) is: set password=PASSWORD('csc495');

	You'll also need to create the following dev, test, and prod DB's for use by the project by running this SQL.

		create database gradbook_development;

		grant all privileges on gradbook_development.* to 'root'@'localhost' identified by 'csc495';

		FLUSH PRIVILEGES;

		create database gradbook_test;

		grant all privileges on gradbook_test.* to 'root'@'localhost' identified by 'csc495';

		FLUSH PRIVILEGES;


		create database gradbook_production;

		grant all privileges on gradbook_production.* to 'root'@'localhost' identified by 'csc495';

		FLUSH PRIVILEGES;

If you clone the new repository I created called gradbook and make the DB changes above the app should run as is.


Once you get it working follow these steps and then check it back in to the repository and create a pull request.

1.  run rails server and make sure you can view the app as is before you make any modifications
2.  Create your own controller named whatever you want and edit the view so it says your name at least
3.  Modify config/routes.rb entry created for you.  Make it follow the regular route format
4.  Create a link in the welcome controller to point to your new page
