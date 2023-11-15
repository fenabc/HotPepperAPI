class RestaurantsController < ApplicationController
  def index
    #リクエスト送信
    url = URI.parse("http://webservice.recruit.co.jp/hotpepper/gourmet/v1")
    url.query = [
      "id=" + "J001160647",
      "name" + "いいとこ鶏 池袋本店",
      "key=" + "64021912cf2b3b35"
    ].join("&")

    req = Net::HTTP::Get.new(url.request_uri)

    ret = Net::HTTP::start(url.host, url.port, use_ssl: true) do |http|
      http.request(req)
    end

    
    
    #nokogiri::xml::document生成
    xml = Nokogiri::XML(ret.body)
    #名前空間の定義
    namespace = {
      "results" => "http://webservice.recruit.co.jp/HotPepper" # ここのURLはなんぞ？
    }
    @ydf = xml.xpath('//results:api_version', namespace).text
    @result = ydf.xpath("results:id/results:name", namespace).text.first

  end
end
