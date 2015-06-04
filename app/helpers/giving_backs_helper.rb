module GivingBacksHelper
  def icon_for_giving_back_type(type)
    icons = { internship: 'shopping-bag', mentoring: 'torsos', guest_speaking: 'projection-screen', other: 'info' }
    icons[type.to_sym]
  end

  def humanize_giving_back_type(type)
    humanized_types = { internship: 'Internship', mentoring: 'Mentoring', guest_speaking: 'Speaking', other: 'Other' }
    humanized_types[type.to_sym]
  end
end
