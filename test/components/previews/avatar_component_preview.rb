# frozen_string_literal: true

class AvatarComponentPreview < ViewComponent::Preview
  # @param image
  # @param size select :available_sizes
  def default(image: Faker::Avatar.image, size: nil)
    render(AvatarComponent.new(image:, size:))
  end

  private
  def available_sizes
    sizes = [ :small, :medium, :large ]
    sizes.unshift(nil)
  end
end
