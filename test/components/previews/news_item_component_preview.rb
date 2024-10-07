# frozen_string_literal: true

class NewsItemComponentPreview < ViewComponent::Preview
  DEFAULT_TITLE = "Codecation 2023: Code, Leren, Bier & Plezier! 🎉"
  DEFAULT_IMAGE = "https://kabisa.nl/wp-content/uploads/2023/11/image1.png"
  DEFAULT_AUTHOR = "Max Bodelier"
  DEFAULT_AVATAR = "https://kabisa.nl/wp-content/uploads/2023/11/Max-vierkant-300x300.png"
  DEFAULT_ROLE = "Consultant/Developer"
  DEFAULT_LINK = "#"
  DEFAULT_CONTENT = "In het weekend van 13 oktober heeft bij Kabisa de jaarlijkse “Codecation” plaatsgevonden. Twaalf collega’s hebben zich voor deze gelegenheid teruggetrokken in een sfeervol vakantiehuis in de Weerterbergen."

  # @param title
  # @param image
  # @param author
  # @param avatar
  # @param role
  # @param link
  # @param content textarea
  def default(title: DEFAULT_TITLE, image: DEFAULT_IMAGE, author: DEFAULT_AUTHOR, avatar: DEFAULT_AVATAR, role: DEFAULT_ROLE, link: DEFAULT_LINK, content: DEFAULT_CONTENT)
    render(NewsItemComponent.new(title:, image:, author:, avatar:, role:, link:)) do
      content
    end
  end
end
