class BeachesController < ApplicationController
require 'open-uri'
require 'nokogiri'
  skip_before_action :authenticate_user!, only: [ :show, :index ]
  def show
    @beach = Beach.find(params[:id])
    scrapper
  end

  def index
    @beaches = Beach.all
  end

  private
    def scrapper
      require "nokogiri"
      require "open-uri"
      #We create EMpty arrays for days, hours , waves hight
      @days = []
      @hours = []
      @waves = []
      #Parse the url with nokogiri
      url = "https://www.todosurf.com/prevision/#{@beach.name}.htm"
      html_file = open(url).read
      doc = Nokogiri::HTML(html_file)

      #push the results into the empty arrayss
      doc.search('.day span').each do |element|
        day = element.text.strip
        unless day.match?(/\d/) || day.empty?
          @days << day
        end
      end
      # @hours = doc.search('tr')[1].search('td').each do |time|
      #   @hours << time.text.strip
      # end
     doc.search('.bars').css('[style]').each do |element|
        @waves << element.text.strip
      end
    end
end
