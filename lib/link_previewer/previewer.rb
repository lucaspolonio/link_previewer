module LinkPreviewer
  class Previewer

    def initialize(url)
      @parser = Parser.new(url)
    end

    def title
      if (og_title = @parser.meta_tag_contents_by_property 'og:title') 
        return og_title
      elsif (twitter_title = @parser.meta_tag_contents_by_property 'twitter:title')
        return twitter_title
      elsif (meta_title = @parser.tag_contents 'title')
        return meta_title
      end
    end

    def description
      if (og_description = @parser.meta_tag_contents_by_property 'og:description')
        return og_description
      elsif (twitter_description = @parser.meta_tag_contents_by_property 'twitter:description')
        return twitter_description
      elsif (meta_description = @parser.meta_tag_contents_by_name 'description')
        return meta_description
      end
    end

    def images
      images = []
      if (og_image = @parser.meta_tag_contents_by_property 'og:image')
        return images << og_image
      elsif (twitter_image = @parser.meta_tag_contents_by_property 'twitter:image')
        return images << twitter_image
      end
    end

  end
end