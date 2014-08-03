require 'spec_helper'

module LinkPreviewer
  class Parser

    describe Parser do

      #shouldn't depend on external resources, TODO should I use a stub?
      let(:parser) { Parser.new('http://www.google.com') }

      it 'gets contents of a HTML tag' do
        expect(parser.tag_contents 'title').to eq('Google')
      end

      it 'gets image src from selector' do
        expect(parser.image_src 'img').to include('/images/')
      end

      it 'follows redirects' do
        pending
        fail
      end

      it 'gets meta tags contents' do 
        #expect(parser.meta_tag_contents).to eq(nil)
        pending
        fail
      end

    end

  end
end