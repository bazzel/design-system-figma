class ButtonPreview < Lookbook::Preview
  def primary
    render "pages/primary"
  end

  def primary_disabled
    render "pages/primary_disabled"
  end

  def primary_with_icon
    render "pages/primary_with_icon"
  end

  def secondary
    render "pages/secondary"
  end

  def secondary_disabled
    render "pages/secondary_disabled"
  end

  def secondary_with_icon
    render "pages/secondary_with_icon"
  end

  def accent
    render "pages/accent"
  end

  def accent_disabled
    render "pages/accent_disabled"
  end

  def accent_with_icon
    render "pages/accent_with_icon"
  end

  def ghost
    render "pages/ghost"
  end

  def ghost_disabled
    render "pages/ghost_disabled"
  end

  def ghost_with_icon
    render "pages/ghost_with_icon"
  end

  def text_link
    render "pages/text_link"
  end

  def text_link_disabled
    render "pages/text_link_disabled"
  end

  def text_link_with_icon
    render "pages/text_link_with_icon"
  end
end
