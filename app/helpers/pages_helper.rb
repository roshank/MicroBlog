module PagesHelper
  def item_image(url, alt)
    image_tag(url, :alt => alt, :class => "round")
  end
end
