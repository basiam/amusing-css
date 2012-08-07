module ApplicationHelper
  def draft_css(text)
    cssed_text(text, "draft")
  end
  def goal_css(text)
    cssed_text(text, "goal")
  end

  def cssed_text(text, string)
    text = text.gsub("#", "##{string} #")
    return text.gsub(/\.(?![^{}]*})/, "##{string} .")
  end
end
