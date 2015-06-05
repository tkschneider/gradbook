# Load the Rails application.
require File.expand_path('../application', __FILE__)

#Brad Bilter
#Used to format date time stamps
#Usage {timestamp}.to_s(:date_format) ex. June 03 2015 at 11:38 AM
Time::DATE_FORMATS[:date_format] = "%B %d %Y at %I:%M %p"

# Initialize the Rails application.
Rails.application.initialize!
