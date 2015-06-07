# Author: Maxwell Barvian
module ValidationHelper
  # Returns an error class if the given model has any errors
  def error_class(model, *fields)
    'error' if model && model.errors.to_hash.slice(*fields).any?
  end

  # Returns a list of foundation-friendly errors if the given models' field has any
  def errors(model, field)
    if model && model.errors.any?
      content_tag :div, class: 'errors' do
        model.errors[field].collect do |msg|
          concat(content_tag(:small, model.errors.full_message(field, msg), class: 'error'))
        end
      end
    end
  end
end
