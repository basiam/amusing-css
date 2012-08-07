module ApplicationHelper
  def draft_css(text)
    text = text.gsub("#", "div#draft #")
    return text.gsub(".", "div#draft .")
  end
  def goal_css(text)
    text = text.gsub("#", "div#goal #")
    return text.gsub(".", "div#goal .")
  end
end
