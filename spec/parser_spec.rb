require 'spec_helper'

module LinkPreviewer
  class Parser

    describe Parser do

      let(:parser) { Parser.new('http://www.example.com') }
      let(:redirected_parser) { Parser.new('http://www.redirect-example.com') }

      it 'gets contents of an HTML tag' do
        expect(parser.tag_contents 'title').to eq('Page title')
      end

      it 'gets image src from selector' do
        # expect(parser.image_src 'img').to eq('image.jpg')
        pending
        fail
      end

      it 'follows redirects' do
        expect(redirected_parser.tag_contents 'title').to eq('Page title')
      end

      it 'gets meta tags contents' do 
        #expect(parser.meta_tag_contents).to eq(nil)
        pending
        fail
      end

    end

  end
end