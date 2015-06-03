# encoding: utf-8
module DeviseHelper

  def devise_error_messages!
    return "" if resource.errors.empty?
    messages = ""
    # messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    resource.errors.values.map { |msg| 
      if msg.count != 0
        messages << content_tag(:li, msg.join(', '))
      end
    }
    # messages = resource.errors.values.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert fade in alert-danger">
      <button class="close" data-dismiss="alert">×</button> 
      <!-- <h2>#{sentence}</h2> -->
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

  def devise_error_messages?
    resource.errors.empty? ? false : true
  end

  
end