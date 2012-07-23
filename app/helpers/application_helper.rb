module ApplicationHelper
  
#Returns the full tite on a per-page basis

  def full_title(page_title)
    base_title = "HNcloneB"
    if page_title.empty?
        base_title
      else
        "#{base_title} | #{page_title}"
      end
    end
    
end
