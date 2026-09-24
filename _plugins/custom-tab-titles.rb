# frozen_string_literal: true

# Chirpy resolves HTML titles for collection tabs through the locale data.
# Register this site's custom tabs so their browser titles are not blank.
Jekyll::Hooks.register :site, :post_read do |site|
  language = site.config.fetch("lang", "en")
  tabs = site.data.dig("locales", language, "tabs")

  next unless tabs

  {
    "personal" => "Personal",
    "academic" => "Academic",
    "professional" => "Professional"
  }.each do |key, title|
    tabs[key] ||= title
  end
end
