require 'link_previewer/version'
require 'link_previewer/parser'
require 'link_previewer/previewer'

module LinkPreviewer
  def self.init(url)
    LinkPreviewer::Previewer.new(url)
  end
end
