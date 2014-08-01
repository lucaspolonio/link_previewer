require 'spec_helper'

module LinkPreviewer
  class Parser

    describe Parser do

      #shouldn't depend on external resources, TODO should I use a stub?
      let(:parser) { Parser.new('http://www.google.com') }

      it 'fetches a URL contents correctly' do
        expect(parser.html).to include('<!doctype html>')
        expect(parser.html).to include('<title>Google</title>')
      end

      it 'gets contents of a HTML tag' do
        expect(parser.tag_contents 'title').to eq('Google')
      end

      it 'gets image src from selector' do
        expect(parser.image_src '.gsok_a.gsst_e img').to include('//www.gstatic.com/inputtools/images/tia.png')
      end

      it 'follows redirects' do
        pending
        fail
      end

    end

  end
end