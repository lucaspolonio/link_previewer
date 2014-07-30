require 'open-uri'

module LinkPreviewer
  class Parser

    attr_accessor :url, :html

    def initialize(url)
      @url = url
      @html = open(url).read
    end

  end
end