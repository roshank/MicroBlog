module ApplicationHelper
  def title
    base_title = "PiggyBanks"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("piglogo.png", :alt => "PiggyBanks", :class => "round", :width => 80)
  end
  
end
