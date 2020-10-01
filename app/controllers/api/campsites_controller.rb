class Api::CampsitesController < ApplicationController

  def index
    @campsites = HTTP.headers("apikey" => "#{Rails.application.credentials.campsites_api[:apikey]}").get("https://ridb.recreation.gov/api/v1/campsites?limit=50&offset=0").parse["RECDATA"]
    render json: @campsites
  end
end
