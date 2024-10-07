# frozen_string_literal: true

class TagComponent < ViewComponent::Base
  def initialize(label:, icon:)
    @label = label
    @icon = icon
  end
end
