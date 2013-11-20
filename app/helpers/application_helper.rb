module ApplicationHelper

  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name, :class => 'nav-li' ) do
      link_to link_text, link_path
    end
  end
  def nav_link_small(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, :class => class_name, :class => 'nav-li-small' ) do
      link_to link_text, link_path
    end
  end

end
