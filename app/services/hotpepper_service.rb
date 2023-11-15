class HotpepperService
  include HTTParty
  base_uri 'http://webservice.recruit.co.jp/hotpepper'

  def initialize(api_key)
    @options = { query: { key: api_key, format: 'json' } }
  end

  def search_shops(keyword)
    @options[:query][:keyword] = keyword
    self.class.get('/gourmet/v1/', @options)
  end
end