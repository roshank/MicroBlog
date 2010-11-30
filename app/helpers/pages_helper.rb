module PagesHelper
  def item_image(url, alt)
    if (url == nil || alt == nil)
      return
    end
    image_tag(url, :alt => alt, :class => "round")
  end
end
