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

      it 'gets HTML elements by tag' do
        
      end

      it 'follows redirects' do
        pending
        fail
      end

    end

  end
end