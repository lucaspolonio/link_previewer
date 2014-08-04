require 'spec_helper'

module LinkPreviewer
  class Previewer

    describe Previewer do

      let(:previewer) { Previewer.new('http://www.example.com') }
      let(:previewer_open_graph) { Previewer.new('http://www.opengraph-example.com') }

      describe '#title' do
        it 'gets a meta tag title' do
          expect(previewer.title).to eq('Page title')
        end
        it 'gives opengraph tags higher priority on titles' do
          expect(previewer_open_graph.title).to eq('Page Open Graph title')
        end
      end

      describe '#description' do
        it 'gets a meta tag description' do
          expect(previewer.description).to eq('Page description')
        end
        it 'gives opengraph tags higher priority on descriptions' do
          expect(previewer_open_graph.description).to eq('Page Open Graph description')
        end
      end

      describe '#images' do
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
end