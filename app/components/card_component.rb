# frozen_string_literal: true

class CardComponent < ViewComponent::Base
  def initialize(link: nil)
    @link = link
  end

  def container_tag
    tag.method(container_name).call(**container_args) do
      yield
    end
  end

  private
  def container_name
    @link ? :a : :div
  end

  def container_args
    options = { class: class_names(container_class_selectors) }

    if @link
      options[:href] =  @link
    end

    options
  end

  def container_class_selectors
    class_selectors = [ "block", "max-w-sm", "p-4", "rounded", "shadow-sm", "bg-background-100/50" ]

    if @link
      class_selectors << [ "transition", "hover:scale-105", "hover:shadow-lg", "focus:scale-105", "focus:shadow-lg", "group" ]
    end

    class_selectors
  end
end
