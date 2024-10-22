# frozen_string_literal: true

class AvatarComponentPreview < ViewComponent::Preview
  def small
    render(AvatarComponent.new(image: Faker::Avatar.image, size: :small))
  end

  def medium
    render(AvatarComponent.new(image: Faker::Avatar.image, size: :medium))
  end

  def large
    render(AvatarComponent.new(image: Faker::Avatar.image, size: :large))
  end
end
