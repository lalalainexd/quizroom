if Rails.env.test?
  require 'vcr'

  VCR.configure do |c|
    c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
    c.hook_into :fakeweb
    c.allow_http_connections_when_no_cassette = true
  end
end