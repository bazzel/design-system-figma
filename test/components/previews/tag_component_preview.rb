# frozen_string_literal: true

class TagComponentPreview < ViewComponent::Preview
  # @param label
  # @param icon select :available_icons
  def default(label: "webinar", icon: nil)
    render(TagComponent.new(label:, icon:))
  end

  private
  def available_icons
    icons = Rails.root.join("app/assets/images/icons/outline/general").glob("*.svg").map { |f| f.basename(".svg") }
    icons.unshift(nil)
  end
end
