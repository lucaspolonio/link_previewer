require 'spec_helper'

module LinkPreviewer
  class Previewer

    describe Previewer do

      let(:previewer) { Previewer.new('http://www.example.com') }
      let(:previewer_twitter) { Previewer.new('http://www.twitter-tag-example.com') }
      let(:previewer_open_graph) { Previewer.new('http://www.opengraph-example.com') }

      describe '#title' do
        it 'gets a meta tag title' do
          expect(previewer.title).to eq('Page title')
        end
        it 'gives twitter tags higher priority on titles' do
          expect(previewer_twitter.title).to eq('Page Twitter Tag title')
        end
        it 'gives opengraph tags even higher priority on titles' do
          expect(previewer_open_graph.title).to eq('Page Open Graph title')
        end
      end

      describe '#description' do
        it 'gets a meta tag description' do
          expect(previewer.description).to eq('Page description')
        end
        it 'gives twitter tags higher priority on descriptions' do
          expect(previewer_twitter.description).to eq('Page Twitter Tag description')
        end
        it 'gives opengraph tags even higher priority on descriptions' do
          expect(previewer_open_graph.description).to eq('Page Open Graph description')
        end
      end

      describe '#images' do
        it 'previews webpages images' do
          #expect(previewer.images.size).to eq(1)
          #expect(previewer.images.first).to eq('image.jpg')
          pending
          fail
        end
        it 'gives opengraph images higher priority' do
          pending
          fail
        end
      end

    end

  end
end