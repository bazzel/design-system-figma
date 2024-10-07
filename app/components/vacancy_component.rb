# frozen_string_literal: true

class VacancyComponent < ViewComponent::Base
  def initialize(title:, image:, skills:, experience:, location:, link:)
    @title = title
    @image = image
    @skills = skills
    @experience = experience
    @location = location
    @link = link
  end


  def specs
    [
      { icon: "icons/outline/general/rocket.svg", text: @skills },
      { icon: "icons/outline/general/briefcase.svg", text: @experience },
      { icon: "icons/outline/general/map-pin-alt.svg", text: @location }
    ]
  end
end
