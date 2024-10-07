# frozen_string_literal: true

class TagComponent < ViewComponent::Base
  def initialize(label:, icon: nil)
    @label = label
    @icon = icon
  end
end
