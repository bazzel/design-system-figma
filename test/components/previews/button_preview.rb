class ButtonPreview < Lookbook::Preview
  layout "button_preview"
  # Consult the **HTML** tab for the proper HTML code to use in your application.
  def primary
    render_button
  end

  # Consult the **HTML** tab for the proper HTML code to use in your application.
  def secondary
    render_button
  end

  # Consult the **HTML** tab for the proper HTML code to use in your application.
  def tertiary
    render_button
  end

  # Consult the **HTML** tab for the proper HTML code to use in your application.
  def accent
    render_button
  end

  # Consult the **HTML** tab for the proper HTML code to use in your application.
  def ghost
    render_button
  end

  # Consult the **HTML** tab for the proper HTML code to use in your application.
  def text_link
    render_button
  end

  private
  def render_button
    calling_method = caller[0][/`.*'/][1..-2]
    render "pages/#{calling_method}"
  end
end
