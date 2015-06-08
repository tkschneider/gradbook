module SearchusersHelper
  def model_fields
    # which fields to display and sort by
    [:first_name, :last_name, :email]
  end
  
  def display_query_sql(users)
    "SQL: #{users.to_sql}"
  end
  
  def action
    action_name == 'basic_search' ? :post : :get
  end
  
  def display_basic_search_results(objects)
    count = 1
    holder = Array.new(4)
    objects.each_with_object('') do |object, string|
      holder[count - 1] = content_tag(:div, display_basic_search_results_row(object), class: ["large-3", "small-3", "columns"])
      if (count % 4 == 0) || (count == objects.size)
        string << content_tag(:div, holder[0] + holder[1] + holder[2] + holder[3], class: ["row"], align: ["center"])#code
        count = 0
      end
      count += 1        
    end
  end
  
  def display_basic_search_results_row(object)
    # code to get searchable attr from user table
    model_fields.each_with_object('') do |field, string|  
      if model_fields.find_index(field) == 0
        string << content_tag(:div, "First name: " + object.send(field), class: "row")
      elsif model_fields.find_index(field) == 1
        string << content_tag(:div, "Last name: " + object.send(field), class: "row")
      else
        string << content_tag(:div, "Email: " + object.send(field), class: "row")
      end
    end
    .html_safe
  end
end



