require 'spec_helper'

module LinkPreviewer
  class Parser

    describe Parser do

      it 'fetches a URL contents correctly' do
        parser = Parser.new('http://www.google.com')
        expect(parser.html).to include('<!doctype html>')
        expect(parser.html).to include('<title>Google</title>')
      end

      it 'follows redirects' do
        pending
      end

      it 'gets HTML elements by tag' do
        pending
      end

    end

  end
end