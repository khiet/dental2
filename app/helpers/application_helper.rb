module ApplicationHelper
  def add_focused_style_to_top_nav(link_path)
    controller_name == link_path ? 'top-nav-focused' : ''
  end
end
