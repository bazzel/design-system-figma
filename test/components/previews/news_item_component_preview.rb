# frozen_string_literal: true

class NewsItemComponentPreview < ViewComponent::Preview
  def default
    render(NewsItemComponent.new(label: "label", icon: "icon"))
  end
end
