# Author: Maxwell Barvian
module GivingBacksHelper
  # Return an appropriate icon name for each opportunity type
  def icon_for_giving_back_type(type)
    icons = { internship: 'shopping-bag', mentoring: 'torsos', guest_speaking: 'projection-screen', other: 'info' }
    icons[type.to_sym]
  end

  # Return an appropriate label for each opportunity type
  def humanize_giving_back_type(type)
    humanized_types = { internship: 'Internship', mentoring: 'Mentoring', guest_speaking: 'Speaking', other: 'Other' }
    humanized_types[type.to_sym]
  end

  # Return an appropriate article + name for each opportunity type
  def header_for_giving_back_type(type)
    headers = { internship: 'an internship', mentoring: 'a mentoring opportunity', guest_speaking: 'a speaking opportunity', other: 'an opportunity' }
    headers[type.to_sym]
  end
end
