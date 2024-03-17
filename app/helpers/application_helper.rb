module ApplicationHelper
  def add_focused_style_to_top_nav(controller_path)
    controller_name == controller_path ? 'top-nav-focused' : nil
  end

  def add_focused_style_to_left_menu(action_path, partial_name)
    partial_name == action_path ? 'left-menu-focused' : nil
  end
end
