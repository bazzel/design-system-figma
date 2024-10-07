# frozen_string_literal: true

class VacancyComponentPreview < ViewComponent::Preview
  DEFAULT_TITLE = "Cloud Architect"
  DEFAULT_IMAGE = "https://kabisa.nl/wp-content/uploads/2023/01/Foto-Jur-CLoud-Legends-768x512.jpeg"
  DEFAULT_SKILLS = "AWS, Azure, Kubernetes, Customer Centricity, Full Stack, DevOps"
  DEFAULT_EXPERIENCE = "5+ years"
  DEFAULT_LOCATION = "Office & Remote"
  DEFAULT_LINK = "#"

  # @param title
  # @param image
  # @param skills
  # @param experience
  # @param location
  # @param link
  def default(title: DEFAULT_TITLE, image: DEFAULT_IMAGE, skills: DEFAULT_SKILLS, experience: DEFAULT_EXPERIENCE, location: DEFAULT_LOCATION, link: DEFAULT_LINK)
    render(VacancyComponent.new(title:, image:, skills:, experience:, location:, link:))
  end
end
