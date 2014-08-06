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

    def meta_tag_contents(meta_tag_selector)
      el = @nokogiri_html.css(meta_tag_selector).first
      el.attr('content') if el
    end

    def image_src(css_selector)
      @nokogiri_html.css(css_selector).map{|el| el['src']}
    end

  end
end