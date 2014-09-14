require 'spec_helper'

describe LinkPreviewer do

  it 'defines an init module method alias' do
    extendend = LinkPreviewer::Previewer.new('http://www.example.com').title
    minimized = LinkPreviewer.init('http://www.example.com').title
    expect(extendend).to eq(minimized)
  end

end