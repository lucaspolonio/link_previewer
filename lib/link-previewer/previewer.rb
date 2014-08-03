module LinkPreviewer
  class Previewer

    def initialize(url)
      @parser = Parser.new(url)
    end

    def title
      @parser.tag_contents 'title'
    end

    def description
      @parser.tag_contents "meta[name='description']"
    end

    def images
    end

  end
end