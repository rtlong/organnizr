module ApplicationHelper
  # Use this to set the page title in the view. Nifty!
  def title(page_title)
    content_for(:title) { page_title }
  end

  def link_to_named_after(object, options = {})
    name = object.name if object.respond_to? :name
    name ||= object.title if object.respond_to? :title
    name ||= object.to_s if object.respond_to? :to_s
    name ||= object.to_param if object.respond_to? :to_param
    name ||= object.inspect
    link_to(name, url_for(object), options)
  end
end
