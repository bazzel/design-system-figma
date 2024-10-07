# frozen_string_literal: true

class SubtitleComponent < ViewComponent::Base
  def initialize(title:, level: 1)
    @title = title
    @level = level
  end

  private
  def class_selectors
    case @level.to_i
    when 1
      [ "text-3xl", "font-normal", "leading-tight", "font-montserrat" ]
    when 2
      [ "text-xl", "font-bold", "leading-tight", "font-poppins" ]
    when 3
      [ "text-lg", "font-bold", "leading-tight", "font-poppins" ]
    end
  end
end
