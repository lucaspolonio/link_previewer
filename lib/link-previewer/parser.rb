require 'nokogiri'
require 'open-uri'

module LinkPreviewer
  class Parser

    def initialize(url)
      @nokogiri_html = Nokogiri::HTML(open(url))
    end

    def tag_contents(tag)
      el = @nokogiri_html.css(tag).first
      el.content if el
    end

    def image_src(css_selector)
      @nokogiri_html.css(css_selector).first['src']
    end

  end
end