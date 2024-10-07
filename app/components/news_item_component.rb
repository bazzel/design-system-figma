# frozen_string_literal: true

class NewsItemComponent < ViewComponent::Base
  def initialize(title:, image:, author:, avatar:, role:, link:)
    @title = title
    @image = image
    @author = author
    @avatar = avatar
    @role = role
    @link = link
  end
end
