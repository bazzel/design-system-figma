# frozen_string_literal: true

class CardComponentPreview < ViewComponent::Preview
  DEFAULT_LINK = "#"
  DEFAULT_CONTENT = '<div class="text-lg font-bold leading-tight font-poppins">Kabisa Success Process</div><p>In 6 stappen naar een succesvol project</p>'
  DEFAULT_NEWS_ITEM_TITLE = "Codecation 2023: Code, Leren, Bier & Plezier! 🎉"
  DEFAULT_NEWS_ITEM_IMAGE = "https://kabisa.nl/wp-content/uploads/2023/11/image1.png"
  DEFAULT_NEWS_ITEM_AUTHOR = "Max Bodelier"
  DEFAULT_NEWS_ITEM_AVATAR = "https://kabisa.nl/wp-content/uploads/2023/11/Max-vierkant-300x300.png"
  DEFAULT_NEWS_ITEM_ROLE = "Consultant/Developer"
  DEFAULT_NEWS_ITEM_LINK = "#"
  DEFAULT_NEWS_ITEM_CONTENT = "In het weekend van 13 oktober heeft bij Kabisa de jaarlijkse “Codecation” plaatsgevonden. Twaalf collega’s hebben zich voor deze gelegenheid teruggetrokken in een sfeervol vakantiehuis in de Weerterbergen."
  DEFAULT_VACANCY_TITLE = "Cloud Architect"
  DEFAULT_VACANCY_IMAGE = "https://kabisa.nl/wp-content/uploads/2023/01/Foto-Jur-CLoud-Legends-768x512.jpeg"
  DEFAULT_VACANCY_SKILLS = "AWS, Azure, Kubernetes, Customer Centricity, Full Stack, DevOps"
  DEFAULT_VACANCY_EXPERIENCE = "5+ years"
  DEFAULT_VACANCY_LOCATION = "Office & Remote"
  DEFAULT_VACANCY_LINK = "#"

  # @param link
  # @hidden
  def default(link: DEFAULT_LINK)
    render(CardComponent.new(link:)) do
      DEFAULT_CONTENT.html_safe
    end
  end

  # @param title
  # @param image
  # @param author
  # @param avatar
  # @param role
  # @param link
  # @param content textarea
  def news_item(title: DEFAULT_NEWS_ITEM_TITLE, image: DEFAULT_NEWS_ITEM_IMAGE, author: DEFAULT_NEWS_ITEM_AUTHOR, avatar: DEFAULT_NEWS_ITEM_AVATAR, role: DEFAULT_NEWS_ITEM_ROLE, link: DEFAULT_NEWS_ITEM_LINK, content: DEFAULT_NEWS_ITEM_CONTENT)
    render(NewsItemComponent.new(title:, image:, author:, avatar:, role:, link:)) do
      content
    end
  end

  # @param title
  # @param image
  # @param skills
  # @param experience
  # @param location
  # @param link
  def vacancy(title: DEFAULT_VACANCY_TITLE, image: DEFAULT_VACANCY_IMAGE, skills: DEFAULT_VACANCY_SKILLS, experience: DEFAULT_VACANCY_EXPERIENCE, location: DEFAULT_VACANCY_LOCATION, link: DEFAULT_VACANCY_LINK)
    render(VacancyComponent.new(title:, image:, skills:, experience:, location:, link:))
  end
end
