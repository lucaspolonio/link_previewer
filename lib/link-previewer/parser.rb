require 'nokogiri'
require 'open-uri'

module LinkPreviewer
  class Parser

    def initialize(url)
      @nokogiri_html = Nokogiri::HTML(open(url))
    end

    def tag_contents(tag)
      @nokogiri_html.css(tag).first.content
    end

    def image_src(css_selector)
      @nokogiri_html.css(css_selector).first['src']
    end

  end
end