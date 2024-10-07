# frozen_string_literal: true

class SubtitleComponentPreview < ViewComponent::Preview
  # @param title
  # @param level select :available_levels
  def default(title: "Lorem Ipsum", level: 1)
    render(SubtitleComponent.new(title:, level:))
  end

  private
  def available_levels
    levels = [ 1, 2, 3 ]
    levels.unshift(nil)
  end
end
