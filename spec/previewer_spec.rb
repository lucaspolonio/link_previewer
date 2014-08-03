require 'spec_helper'

module LinkPreviewer
  class Previewer

    describe Previewer do

      #shouldn't depend on external resources, TODO should I use a stub?
      let(:previewer) { Previewer.new('http://www.google.com') }

      it 'previews a webpage title' do
        expect(previewer.title).to eq('Google')
      end

      it 'previews a webpage description' do
        expect(previewer.description).to eq(nil)
      end

      it 'previews webpages images' do
        # expect(previewer.images).to eq('something')
        pending
        fail
      end

      it 'previews the most important image for a website' do
        pending
        fail
      end

    end

  end
end