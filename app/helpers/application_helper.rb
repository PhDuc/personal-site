module ApplicationHelper
  def render_title
    return @page_title if defined?(@page_title)
    "DP| Home"
  end
end
