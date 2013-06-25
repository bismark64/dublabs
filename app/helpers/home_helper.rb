module HomeHelper
  def home_title(tag)
    tag.present? ? t("titles.by_tag", :tag => tag.capitalize) : t("titles.public_feed")
  end

  def title(item)
    content_tag :a, item.title, :class => "title-link",:href => larger_image_path(id: item.id), :data => {:toggle => 'modal', :target => "#modal-#{item.id}"}
  end

  def description(item)
    content_tag :a, clean(item.description), :class => "desc-link", :href => larger_image_path(id: item.id), :data => {:toggle => 'modal', :target => "#modal-#{item.id}"}
  end

  def clean(target)
    sanitize(target, :tags => ["img", "p"]).html_safe
  end

  def modal_body(target)
    sanitize(target, :attributes => ["href", "class", "id", "title", "alt", "src"]).html_safe
  end
end
