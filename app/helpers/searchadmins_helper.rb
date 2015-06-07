module SearchadminsHelper
  def link_to_add_fields(name, f, type, locals={})
    new_object = f.object.send "build_#{type}"
    id = "new_#{type}"
    fields = f.send("#{type}_fields", new_object, child_index: id) do |builder|
      render(type.to_s + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields " + locals[:class], data: {id: id, fields: fields.gsub("\n", "")})
  end
  
  def model_fields
    # which fields to display and sort by
    [:first_name, :last_name, :email]
  end
  
  def display_query_sql(users)
    "SQL: #{users.to_sql}"
  end
  
  def action
    action_name == 'advanced_search' ? :post : :get
  end
  
  def display_sort_column_headers(search)
    model_fields.each_with_object('') do |field, string|
      string << content_tag(:th, sort_link(search, field, {}, method: action))
    end
  end
  
  def display_search_results(objects)
    objects.each_with_object('') do |object, string|
      string << content_tag(:tr, display_search_results_row(object))
    end
  end
  
  def display_search_results_row(object)
    fieldCount = 0
    model_fields.each_with_object('') do |field, string|
      if fieldCount == 0
        string << content_tag(:td, link_to(object.send(field), logins_path + '/' + object.id.to_s))#code
      else
        string << content_tag(:td, object.send(field))
      end
      
      fieldCount += 1
      # button to link to profile link_to
    end
    .html_safe
  end
end

# http://stackoverflow.com/questions/14531426/how-can-i-save-ransack-searches-to-the-database


