module ValidationHelper
  def error_class(model, *fields)
    'error' if model && model.errors.to_hash.slice(*fields).any?
  end

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
