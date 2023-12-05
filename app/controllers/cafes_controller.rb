require 'net/http'
require 'uri'
require 'json'

class CafesController < ApplicationController

  def index
    @prefectures = Prefecture.all
    service = HotpepperService.new('YOUR API KEY')
    # binding.pry
  end

  def show
    # APIエンドポイントのURIを決定
    uri = URI.parse('http://webservice.recruit.co.jp/hotpepper/gourmet/v1/')
    uri.query = URI.encode_www_form({
      key: 'YOUR API KEY',
      lat: 35.4622429,
      lng: 133.0664864,
      range: 3,
      genre: 'G014', # カフェを選択
      keyword: params[:keyword],
      large_area: params[:large_area],
      count: 20,
      format: 'json'
    })

    request = Net::HTTP::Get.new(uri.request_uri)
    response = Net::HTTP.start(uri.host, uri.port) do |http|
      http.request(request)
    end

    # json形式のデータをハッシュに変換
    json = JSON.parse(response.body)
    @shops = json["results"]["shop"]
    # pryによるデバッグ
    # binding.pry
    render :search_result

  end
end
