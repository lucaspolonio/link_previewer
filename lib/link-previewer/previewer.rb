module LinkPreviewer
  class Previewer

    def initialize(url)
      @parser = Parser.new(url)
    end

    def title
      if (og_title = @parser.meta_tag_contents "meta[@property='og:title']") 
        return og_title
      elsif (twitter_title = @parser.meta_tag_contents "meta[@property='twitter:title']") 
        return twitter_title
      elsif (meta_title = @parser.tag_contents 'title')
        return meta_title
      end
    end

    def description
      if (og_description = @parser.meta_tag_contents "meta[@property='og:description']")
        return og_description
      elsif (twitter_description = @parser.meta_tag_contents "meta[@property='twitter:description']")
        return twitter_description
      elsif (meta_description = @parser.meta_tag_contents "meta[name='description']")
        return meta_description
      end
    end

    def images
      images = []
      if (og_image = @parser.meta_tag_contents "meta[@property='og:image']")
        return images << og_image
      elsif (twitter_image = @parser.meta_tag_contents "meta[@property='twitter:image']")
        return images << twitter_image
      end
    end

  end
end