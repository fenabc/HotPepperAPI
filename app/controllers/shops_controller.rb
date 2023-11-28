require 'net/http'
require 'uri'

class ShopsController < ApplicationController
  def index
    service = HotpepperService.new('64021912cf2b3b35')
  end

  def show
    # APIエンドポイントのURIを決定
    uri = URI.parse('http://webservice.recruit.co.jp/hotpepper/gourmet/v1/')
    uri.query = URI.encode_www_form({
      key: '64021912cf2b3b35',
      keyword: params[:keyword],
      # large_area: params[:large_area],
      # range: params[:range],
      # lat: params[:lat],
      # lon: params[:lon],
      # id: params[:id],
      format: 'xml'
    })

    # response = Net::HTTP.get_response(uri)
    # response = Net::HTTP::Get.new(uri.request_uri)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = Net::HTTP.start(uri.host, uri.port) do |http|
      http.request(request)
    end

    #nokogiri::xml::document生成
    xml = Nokogiri::XML(response.body)

    # pryによるデバッグ
    # binding.pry


    # 名前空間の定義 => 今回不要
    # namespace = {
    #   "results" => "http://webservice.recruit.co.jp/HotPepper/"
    # }
    # results = xml.xpath('//results', namespace)

    # ログデバッグ
    # logger.debug("***************#{Nokogiri::XML(results).inspect}")


    # @shops = Nokogiri::XML(results.text)
    @shops = xml.xpath('/').children[0].children
    @image_url = []
    @shops[2].text.to_i.times do |i|
      @image_url.push(@shops[i+4].children[2].text)
    end

    # -- @shopsのindex --
    # 0 version
    # 1 result_available
    # 2 results_returned
    # 3 results_start
    # 4以降は店舗情報
    #
    # -- @shops.children[i] --
    # 0：id
    # 1：name
    # 2：logo_image
    # 3：name_kana
    # 4：address
    # 5：station_name
    # 6：ktai_coupon
    # 7：large_service_area
    # 8：service_area
    # 9：large_area
    # 10：middle_area
    # 11：small_area
    # 12：lat
    # 13：lng
    # 14：genre
    # 15：sub_genre    
    # 16：budget    
    # 17：catch    
    # 18：capacity    
    # 19：access    
    # 20：mobile_access    
    # 21：urls    
    # 22：photo    
    # 23：open    
    # 24：close    
    # 25：party_capacity    
    # 26：other_memo    
    # 27：shop_detail_memo    
    # 28：budget_memo    
    # 29：wedding    
    # 30：course    
    # 31：free_drink    
    # 32：free_food    
    # 33：private_room    
    # 34：horigotatsu    
    # 35：tatami    
    # 36：card    
    # 37：non_smoking    
    # 38：charter    
    # 39：parking    
    # 40：barrier_free    
    # 41：show    
    # 42：karaoke    
    # 43：band    
    # 44：tv    
    # 45：lunch    
    # 46：midnight    
    # 47：english    
    # 48：pet    
    # 49：child    
    # 50：wifi    
    # 51：coupon_urls

    # binding.pry


    render :search_result

  end

  # def show
  #   service = HotpepperService.new('64021912cf2b3b35')
  #   @shops = service.search_shops(params[:keyword])['results']['shop']
  #   p @shops
  #   render :search_result
  # end

  
end
