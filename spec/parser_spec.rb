require 'spec_helper'

module LinkPreviewer
  class Parser

    describe Parser do

      it 'fetches a URL contents correctly' do
        #shouldn't depend on external resources, but it's google and it doesn't make sense to mock this
        parser = Parser.new('http://www.google.com')
        expect(parser.html).to include('<!doctype html>')
        expect(parser.html).to include('<title>Google</title>')
      end

      it 'gets HTML elements by tag' do
        pending
        fail
      end

      it 'follows redirects' do
        pending
        fail
      end

    end

  end
end