# frozen_string_literal: true

# @hidden
class CardComponentPreview < ViewComponent::Preview
  DEFAULT_LINK = "#"
  DEFAULT_CONTENT = '<div class="text-lg font-bold leading-tight font-poppins">Kabisa Success Process</div><p>In 6 stappen naar een succesvol project</p>'
  # @param link
  def default(link: DEFAULT_LINK)
    render(CardComponent.new(link:)) do
      DEFAULT_CONTENT.html_safe
    end
  end
end
