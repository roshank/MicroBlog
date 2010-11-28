module ApplicationHelper
  def title
    base_title = "Ruby on Rails Sample"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("piglogo.png", :alt => "Sample App", :class => "round", :width => 80)
  end
  
end
