require 'pry'
require 'webmock/rspec'
require 'link_previewer'

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, 'www.example.com').to_return(status: 200, body: File.new('spec/fixtures/normal.html'))
    stub_request(:get, 'www.twitter-tag-example.com').to_return(status: 200, body: File.new('spec/fixtures/twitter.html'))
    stub_request(:get, 'www.opengraph-example.com').to_return(status: 200, body: File.new('spec/fixtures/opengraph.html'))
    stub_request(:get, 'www.redirect-example.com').to_return(:status => 301, :headers => {'Location' => 'http://www.example.com'})
  end
end