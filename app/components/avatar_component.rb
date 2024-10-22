# frozen_string_literal: true

class AvatarComponent < ViewComponent::Base
  def initialize(image:, size: :medium)
    @image = image
    @size = size || :medium
  end

  private
  def image_class_selectors
    class_selectors = [ "inline-block",  "rounded-full", "border", "border-background-200" ]

    case @size.to_sym
    when :small
      class_selectors << "size-6"
    when :medium
      class_selectors << "size-12"
    when :large
      class_selectors << "size-[3.75rem]"
    end
  end
end
