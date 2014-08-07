require 'spec_helper'

module LinkPreviewer
  class Parser

    describe Parser do

      let(:og_parser) { Parser.new('http://www.opengraph-example.com') }
      let(:redirected_parser) { Parser.new('http://www.redirect-example.com') }

      it 'gets contents of an HTML tag' do
        expect(og_parser.tag_contents 'title').to eq('Page title')
      end

      it 'gets image src from selector' do
        # expect(og_parser.image_src 'img').to eq('image.jpg')
        pending
        fail
      end

      it 'gets meta tags contents' do 
        expect(og_parser.meta_tag_contents "meta[@property='og:description']").to eq('Page Open Graph description')
        expect(og_parser.meta_tag_contents "meta[name='description']").to eq('Page description')
        expect(og_parser.meta_tag_contents_by_property 'og:description').to eq('Page Open Graph description')
        expect(og_parser.meta_tag_contents_by_name 'description').to eq('Page description')
      end

      it 'follows redirects' do
        expect(redirected_parser.tag_contents 'title').to eq('Page title')
      end

    end

  end
end