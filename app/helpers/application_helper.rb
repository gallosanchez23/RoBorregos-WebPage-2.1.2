module ApplicationHelper
  def fa_icon(icon)
    "<i class='fa fa-#{icon} fa-fw'></i>"
  end

  def fa_icon_2x(icon)
    "<i class='fa fa-#{icon} fa-2x'></i>"
  end

  def fa_icon_stack2(icon)
    "<i class='fa fa-#{icon} fa-stack-2x'></i>"
  end

  def fa_icon_stack1(icon)
    "<i class='fa fa-#{icon} fa-stack-1x'></i>"
  end

  def sidebar_btn(icon, legend)
    btn_link_to = %Q|<a href='#' class='sidebar-btn'>
                       #{fa_icon(icon)}&nbsp; #{legend.capitalize}
                     </a>|
  end
end
