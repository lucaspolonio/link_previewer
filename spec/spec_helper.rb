require 'pry'
require 'webmock/rspec'
require 'link-previewer'

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, 'www.example.com').to_return(status: 200, body: File.new('spec/fixtures/normal.html'))
    stub_request(:get, 'www.opengraph-example.com').to_return(status: 200, body: File.new('spec/fixtures/opengraph.html'))
  end
end